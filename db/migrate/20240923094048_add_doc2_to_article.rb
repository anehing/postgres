class AddDoc2ToArticle < ActiveRecord::Migration[7.2]
  def change
    add_column :articles, :doc2, :binary
  end
end
