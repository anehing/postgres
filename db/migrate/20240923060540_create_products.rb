class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    enable_extension 'btree_gist' unless extension_enabled?('btree_gist')
    create_table :products do |t|
      t.integer :price, null: false
      t.daterange :availability_range, null: false

      t.exclusion_constraint "price WITH =, availability_range WITH &&", using: :gist, name: "price_check", deferrable: :deferred

      t.timestamps
    end
  end
end
