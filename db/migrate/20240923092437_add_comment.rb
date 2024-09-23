class AddComment < ActiveRecord::Migration[7.2]
  def change
    add_column :comments, :contents, :binary
  end
end
