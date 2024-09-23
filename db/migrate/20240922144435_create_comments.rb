class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.bit :settings
      t.column :setting, "bit(8)"

      t.timestamps
    end
  end
end
