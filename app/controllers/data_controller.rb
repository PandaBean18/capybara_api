class DataController < ApplicationController 
    def upload
        data = Base64.decode64(params[:image_data])
        student_class = params[:student_class].to_i
        student_section = params[:student_section]
        f = open("#{Dir.pwd}/app/assets/images/tmp.png", 'wb')
        f.write(data)
        f.close
        system('python3 upload.py')
        sleep(0.1)
        f = open("#{Dir.pwd}/image_url.txt", 'r')
        url = f.read 
        f.close 
        @datum = Datum.new(student_name: params[:student_name], student_class: student_class, student_section: student_section, student_quote: params[:student_quote], image_url: url)
        if @datum.save 
            render json: @datum 
        else  
            render json: @datum.errors.full_messages
        end
    end

    def images
        @data = Datum.order(created_at: :desc).limit(10)
        render json: @data 
    end
end