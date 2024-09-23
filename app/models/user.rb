class User < ApplicationRecord
  has_many :books
  include PgSearch::Model
  multisearchable(against: [:username],
                  additional_attributes: ->(user) { { user_id: user.id } })

  def user
    User.first
  end

end
