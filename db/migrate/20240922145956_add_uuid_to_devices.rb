class AddUuidToDevices < ActiveRecord::Migration[7.2]
  def change
    add_column :devices, :kind, :string
  end
end
