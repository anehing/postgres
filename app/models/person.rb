class Person < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_full_name, against: [:first_name, :last_name]
end
