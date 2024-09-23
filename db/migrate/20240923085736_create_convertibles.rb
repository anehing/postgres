class CreateConvertibles < ActiveRecord::Migration[7.2]
  def change
    create_table :convertibles do |t|
      t.timestamps
    end
  end
end
