class Convertible < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:make, :model],
                  if: :available_in_red?
end
