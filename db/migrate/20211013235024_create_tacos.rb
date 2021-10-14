class CreateTacos < ActiveRecord::Migration[6.1]
  def change
    create_table :tacos do |t|
      t.string :name
      t.string :description
      t.string :image
      t.float :price
      t.integer :user_id
      
      t.timestamps
    end
  end
end
