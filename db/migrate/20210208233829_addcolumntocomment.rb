class Addcolumntocomment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :user_student_id, :integer 
  end
end
