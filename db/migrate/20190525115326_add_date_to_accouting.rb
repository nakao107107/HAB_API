class AddDateToAccouting < ActiveRecord::Migration[5.2]
  def change
    add_column :accountings, :date, :date
    add_column :accountings, :item, :string
    add_column :accountings, :note, :text
  end
end
