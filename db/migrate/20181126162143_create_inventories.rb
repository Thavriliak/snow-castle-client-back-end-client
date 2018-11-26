class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.string :product
      t.integer :amount
      t.float :price
      t.string :size
      t.string :color
      t.references :brand, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
