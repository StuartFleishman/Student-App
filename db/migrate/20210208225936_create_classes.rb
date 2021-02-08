class CreateClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :classes do |t|
      t.string :name
      t.timestamps
    end
  end
end
