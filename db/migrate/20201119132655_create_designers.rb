class CreateDesigners < ActiveRecord::Migration[6.0]
  def change
    create_table :designers do |t|
      t.text :name

      t.timestamps
    end
  end
end
