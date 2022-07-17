class Datum < ApplicationRecord
    validates :student_name, :student_quote, :image_url, :student_class, :student_section, presence: true 
end
