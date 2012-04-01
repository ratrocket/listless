class CreateItemDetails < ActiveRecord::Migration
  def change
    create_table :item_details do |t|
      t.integer :price
      t.string :location
      t.string :url
      t.belongs_to :item

      t.timestamps
    end
    add_index :item_details, :item_id
  end
end
