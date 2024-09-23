class RenameArticleStatus < ActiveRecord::Migration[7.2]
  def change
    rename_enum :article_status, to: :article_state
  end
end
