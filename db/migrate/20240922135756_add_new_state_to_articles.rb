class AddNewStateToArticles < ActiveRecord::Migration[7.2]
  def change
    # add_enum_value :article_state, "archived" # will be at the end after published
    add_enum_value :article_state, "in review", before: "published"
    add_enum_value :article_state, "approved", after: "in review"
  end
end
