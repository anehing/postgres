class CreateAntipatternExamples < ActiveRecord::Migration[7.2]
  def change
    create_table :antipattern_examples do |t|
      t.text :contents
      t.datetime :published_at

      t.timestamps
    end
  end
end
