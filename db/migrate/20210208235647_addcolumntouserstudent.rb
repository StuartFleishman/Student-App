class Addcolumntouserstudent < ActiveRecord::Migration[6.1]
  def change
    add_column :user_students, :name, :string
  end
end
