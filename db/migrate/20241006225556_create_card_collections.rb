class CreateCardCollections < ActiveRecord::Migration[7.2]
  def change
    create_table :card_collections do |t|
      t.string :name, null: false
      t.references :user, null: false, foreign_key: :user_id, index: true
      t.integer :card_ids, array: true, default: []

      t.timestamps
    end
  end
end
