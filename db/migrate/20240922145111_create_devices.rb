class CreateDevices < ActiveRecord::Migration[7.2]
  def change
    create_table :devices do |t|
      t.inet :ip
      t.cidr :network
      t.macaddr :address

      t.timestamps
    end
  end
end
