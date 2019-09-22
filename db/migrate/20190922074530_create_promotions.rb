class CreatePromotions < ActiveRecord::Migration[6.0]
  def change
    create_table :promotions do |t|
      t.string :promotion_name
      t.string :amount
      t.string :decription
      t.references :images, null: false, foreign_key: true
      t.datetime :date_start
      t.datetime :date_close

      t.timestamps
    end
  end
end
