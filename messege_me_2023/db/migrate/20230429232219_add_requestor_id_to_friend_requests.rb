class AddRequestorIdToFriendRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :friend_requests, :requestor_id, :integer
  end
end
