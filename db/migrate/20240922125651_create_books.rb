class CreateBooks < ActiveRecord::Migration[7.2]
  def change
    create_table :books do |t|
      t.string :title
      t.belongs_to :user, foreign_key: true
      t.string 'tags', array: true
      t.integer 'ratings', array: true

      t.timestamps
    end

    add_index :books, :tags, using: 'gin'
    add_index :books, :ratings, using: 'gin'
  end
end
