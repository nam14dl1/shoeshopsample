class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :customer_address
      t.string :telephone

      t.timestamps
    end
  end
end
