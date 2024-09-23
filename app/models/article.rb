class Article < ApplicationRecord
  enum :status, {
    draft: "draft", published: "published", archived: "archived"
  }, prefix: true

  include PgSearch::Model
  multisearchable(against: [:doc, :doc2], additional_attributes: ->(user) { { user_id: user.id } })


  def user
    User.first
  end
end
