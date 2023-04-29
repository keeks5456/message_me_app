class AddReceiverIdToFriendRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :friend_requests, :receiver_id, :integer
  end
end
