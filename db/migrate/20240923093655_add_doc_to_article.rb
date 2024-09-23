class AddDocToArticle < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :doc, :text
  end
end
