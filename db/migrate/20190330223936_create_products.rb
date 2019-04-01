class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :image
      t.belongs_to :category, index: true
      #t.references :categoys, foreign_key: true

      t.timestamps
    end
  end
end
