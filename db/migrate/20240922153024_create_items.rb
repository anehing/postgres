class CreateItems < ActiveRecord::Migration[7.2]
  def change
    create_table :items do |t|
      t.integer :position, null: false
      t.unique_constraint [:position], deferrable: :immediate

      t.timestamps
    end


  end


end
