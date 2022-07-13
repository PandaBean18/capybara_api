class Datum < ApplicationRecord
    validates :student_name, :student_quote, :image, presence: true 
    
end
