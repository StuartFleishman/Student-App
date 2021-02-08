class CreateUserStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :user_students do |t|
      t.string :namne 
      t.timestamps
    end
  end
end
