class CreateOrderTacos < ActiveRecord::Migration[6.1]
  def change
    create_table :order_tacos do |t|
      t.integer :order_id
      t.integer :taco_id
      
      t.timestamps
    end
  end
end
