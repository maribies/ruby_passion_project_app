class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.text :url
      t.text :sku

      t.timestamps
    end

    create_table :name do |t|
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end

    create_table :designer do |t|
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end

    create_table :price do |t|
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end

    create_table :material do |t|
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end

    create_table :dimension do |t|
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end

    create_table :season do |t|
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end

    create_table :collection do |t|
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end

    create_table :category do |t|
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end

    create_table :brand do |t|
      t.belongs_to :product, foreign_key: true
      t.timestamps
    end
  end
end
