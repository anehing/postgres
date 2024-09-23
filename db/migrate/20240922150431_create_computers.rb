class CreateComputers < ActiveRecord::Migration[7.2]
  def change
    create_table :computers, id: :uuid do |t|
      t.timestamps
    end
  end
end
