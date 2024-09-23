class AddContentToDocument < ActiveRecord::Migration[7.2]
  def change
    add_column :documents, :contents, :text
  end
end
