class BlogPost < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title, against: :title
end
