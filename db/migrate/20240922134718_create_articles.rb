class CreateArticles < ActiveRecord::Migration[7.2]
  create_enum :article_status, %w[draft published archived]
  def change
    create_table :articles do |t|
      t.enum :status, enum_type: :article_status, default: "draft", null: false

      t.timestamps
    end
  end
end
