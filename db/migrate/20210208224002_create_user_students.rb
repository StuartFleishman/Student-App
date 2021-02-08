class CreateUserStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :user_students do |t|

      t.timestamps
    end
  end
end
