class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.references :orders, null: false, foreign_key: true
      t.references :product_details, null: false, foreign_key: true
      t.references :promotions_products, null: false, foreign_key: true
      t.string :price
      t.integer :quantity

      t.timestamps
    end
  end
end
