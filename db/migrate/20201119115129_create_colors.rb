class CreateColors < ActiveRecord::Migration[6.0]
  def change
    create_table :colors do |t|
      t.text :color

      t.timestamps
    end
  end
end
