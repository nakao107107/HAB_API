class Category < ApplicationRecord

    has_many :accountings, dependent: :destroy 
    
end
