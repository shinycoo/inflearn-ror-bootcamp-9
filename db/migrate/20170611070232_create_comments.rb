class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :contents
      t.integer :post_id, index: true, foreign_key: true 

      t.timestamps null: false
    end
  end
end
