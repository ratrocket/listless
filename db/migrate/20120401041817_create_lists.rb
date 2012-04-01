class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.belongs_to :category

      t.timestamps
    end
    add_index :lists, :category_id
  end
end
