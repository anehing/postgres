class Product < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:make, :model],
                  if: lambda { |record| record.model_year > 1970 }
end
