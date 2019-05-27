class Category < ApplicationRecord

    has_many :accountings, dependent: :destroy 

    def basic_info

        {
            id: id,
            name: name
        }

    end
    
end
