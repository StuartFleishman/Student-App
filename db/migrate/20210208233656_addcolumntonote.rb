class Addcolumntonote < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :user_student_id, :integer 
  end
end
