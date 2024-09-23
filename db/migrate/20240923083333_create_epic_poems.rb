class CreateEpicPoems < ActiveRecord::Migration[7.2]
  def change
    create_table :epic_poems do |t|
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
