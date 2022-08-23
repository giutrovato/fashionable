class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :gender
      t.text :describtion
      t.decimal :price
      t.string :category

      t.timestamps
    end
  end
end
