class AntipatternExample < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:contents],
                  if: :published?

  def published?
    published_at < Time.now
  end
end
