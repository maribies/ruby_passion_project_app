class CreateDimensions < ActiveRecord::Migration[6.0]
  def change
    create_table :dimensions do |t|
      t.text :dimensions

      t.timestamps
    end
  end
end
