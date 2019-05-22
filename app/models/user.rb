class User < ApplicationRecord

    has_many :accountings, dependent: :destroy 
    
end
