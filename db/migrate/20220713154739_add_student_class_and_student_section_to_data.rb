class AddStudentClassAndStudentSectionToData < ActiveRecord::Migration[6.1]
  def change
    add_column :data, :student_class, :integer
    add_column :data, :student_section, :string
  end
end
