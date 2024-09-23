class AddIndexUsersOnEmailIncludeId < ActiveRecord::Migration[7.2]
  def change

    # add_index :users, :email, include: :id

    add_index :users, :username, include: [:id, :created_at]

  end
end
