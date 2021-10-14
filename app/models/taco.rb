class Taco < ApplicationRecord
    has_many :order_tacos
    has_many :orders, through: :order_tacos
    
end