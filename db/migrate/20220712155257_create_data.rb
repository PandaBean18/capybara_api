class CreateData < ActiveRecord::Migration[6.1]
    def change
        create_table :data do |t|
            t.string :student_name
            t.string :student_quote
            t.binary :image

            t.timestamps
        end
    end
end
