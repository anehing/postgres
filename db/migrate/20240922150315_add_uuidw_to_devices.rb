class AddUuidwToDevices < ActiveRecord::Migration[7.2]
  def change
    add_column :devices, :uuid, :uuid
  end
end
