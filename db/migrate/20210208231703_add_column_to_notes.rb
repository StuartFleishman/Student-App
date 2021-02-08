class AddColumnToNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :class_id, :integer 
  end
end
