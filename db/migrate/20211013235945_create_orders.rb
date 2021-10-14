class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.string :status
      t.integer :user_id
      t.float :total
      
      t.timestamps
    end
  end
end
