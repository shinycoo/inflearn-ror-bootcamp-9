class CreateVerifications < ActiveRecord::Migration
  def change
    create_table :verifications do |t|
      t.references :user
      t.boolean :is_verified, :default => false
      t.boolean :is_active, :default => true 
      t.string :code

      t.timestamps null: false
    end
  end
end
