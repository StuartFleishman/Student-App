class CreateJoinTableClassUserStudent < ActiveRecord::Migration[6.1]
  def change
    create_join_table :Classes, :UserStudents do |t|
       t.index [:class_id, :user_student_id]
       t.index [:user_student_id, :class_id]
    end
  end
end
