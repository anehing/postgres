class Book < ApplicationRecord
  belongs_to :user
  has_one :document

  include PgSearch

  pg_search_scope :search_title,
                  :against => [:title],
                  :using => [:tsearch, :dmetaphone, :trigrams],
                  :ignoring => :accents
end
