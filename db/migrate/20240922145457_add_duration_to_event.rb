class AddDurationToEvent < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :duration2, :interval
  end
end
