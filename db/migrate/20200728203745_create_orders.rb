class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :food_name
      t.string :receiver_email

      t.timestamps
    end
  end
end
