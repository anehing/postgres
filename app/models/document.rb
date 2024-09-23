class Document < ApplicationRecord
  belongs_to :book
  include PgSearch::Model
  multisearchable against: [:contents]

end
