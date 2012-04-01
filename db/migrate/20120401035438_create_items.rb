class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.date :date_available
      t.belongs_to :list

      t.timestamps
    end
    add_index :items, :list_id
  end
end
