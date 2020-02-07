class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :category_id
      t.integer :seller_id
      t.integer :buyer_id
      t.timestamps
    end
  end
end
