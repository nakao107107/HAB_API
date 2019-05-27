class Accounting < ApplicationRecord

    belongs_to :user
    belongs_to :category

    def basic_info
        {
          id: id,
          payment_type: payment_type,
          amount: amount,
          item: item,
          date: date,
          note: note,
          category: {
              id: category.id,
              name: category.name
          }
        }
    end
    
end
