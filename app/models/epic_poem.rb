class EpicPoem < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:title, :author]
end
