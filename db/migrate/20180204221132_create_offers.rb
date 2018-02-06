class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.integer :status, default: 0, null: false
      t.string :advertiser_name, null: false, unique: true
      t.string :url, null: false
      t.text :description, null: false
      t.datetime :starts_at, null: false
      t.datetime :ends_at
      t.boolean :premium, default: false, null: false

      t.timestamps
    end
  end
end
