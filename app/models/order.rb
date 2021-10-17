class Order < ApplicationRecord
    belongs_to :taco
    belongs_to :user    
end