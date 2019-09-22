class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :categories, null: false, foreign_key: true
      t.references :brands, null: false, foreign_key: true
      t.string :decripton
      t.references :images, null: false, foreign_key: true
      t.string :unit_price

      t.timestamps
    end
  end
end
