class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.text :currency
      t.float :amount

      t.timestamps
    end
  end
end
