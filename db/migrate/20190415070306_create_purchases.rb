class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :album_id
      t.integer :user_id

      t.timestamps
    end
    add_index(:purchases, [:album_id, :user_id], unique: true)
  end
end
