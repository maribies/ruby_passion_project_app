class CreateQuantities < ActiveRecord::Migration[6.0]
  def change
    create_table :quantities do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
