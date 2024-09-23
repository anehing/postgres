class CreateDocuments < ActiveRecord::Migration[7.2]
  def change
    create_table :documents do |t|
      t.binary 'payload'
      t.belongs_to :book, foreign_key: true
      t.timestamps
    end
  end
end