class CreateProfiles < ActiveRecord::Migration[7.2]
  def change
    enable_extension 'hstore' unless extension_enabled?('hstore')
    create_table :profiles do |t|
      t.hstore 'settings'

      t.timestamps
    end
  end
end
