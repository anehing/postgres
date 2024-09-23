class Flower < ApplicationRecord
  include PgSearch::Model
  multisearchable against: :color
end
