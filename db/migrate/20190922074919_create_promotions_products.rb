class CreatePromotionsProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :promotions_products do |t|
      t.references :promotions, null: false, foreign_key: true
      t.references :products, null: false, foreign_key: true

      t.timestamps
    end
  end
end
