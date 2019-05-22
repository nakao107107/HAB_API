class CreateAccountings < ActiveRecord::Migration[5.2]
  def change
    create_table :accountings do |t|
      t.integer :user_id
      t.integer :amount
      t.integer :category_id

      t.timestamps
    end
  end
end
