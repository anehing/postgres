class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.json :payload
      t.jsonb :payload2

      t.timestamps
    end
  end
end
