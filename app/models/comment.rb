class Comment < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:contents]
end
