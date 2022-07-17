class DataController < ApplicationController 
    def upload
        last_id = Datum.last ? ( Datum.last.id + 1) : 1
        image_path = "#{Dir.pwd}/app/assets/images/#{last_id}.png"
        f = open(image_path, 'wb')
        data = Base64.decode64(params[:image_data])
        f.write(data)
        f.close
        sleep(1)
        image_url = "http://127.0.0.1:3000#{ActionController::Base.helpers.image_path("#{last_id}.png")}"
        @datum = Datum.new(
            student_name: params[:student_name], 
            student_class: params[:student_class], 
            student_section: params[:student_section], 
            student_quote: params[:student_quote], 
            image_url: image_url
        )

        if @datum.save
            render json: @datum
        else  
            render json: @datum.errors.full_messages, status: :bad_request
        end
    end

    def image 
        id = params[:id]
        url = ActionController::Base.helpers.image_path("#{id}.png")
        if url 
            redirect_to(url)
        end
    end
end