class CreateJalopies < ActiveRecord::Migration[7.2]
  def change
    create_table :jalopies do |t|
      t.timestamps
    end
  end
end
