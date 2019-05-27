class AddTypeToAccountings < ActiveRecord::Migration[5.2]
  def change
    add_column :accountings, :payment_type, :string
  end
end
