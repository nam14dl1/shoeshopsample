class CreateProductDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :product_details do |t|
      t.references :products, null: false, foreign_key: true
      t.references :colors, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true
      t.integer :quantity
      t.string :import_date

      t.timestamps
    end
  end
end
