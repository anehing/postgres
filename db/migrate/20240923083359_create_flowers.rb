class CreateFlowers < ActiveRecord::Migration[7.2]
  def change
    create_table :flowers do |t|
      t.string :color

      t.timestamps
    end
  end
end
