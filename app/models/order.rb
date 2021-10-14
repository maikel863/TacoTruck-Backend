class Order < ApplicationRecord
    belongs_to :user
    has_many :order_tacos
    has_many :tacos, through: :order_tacos
    
end