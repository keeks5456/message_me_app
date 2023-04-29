class FriendRequest < ApplicationRecord
    belongs_to :requestor, class_name: "User"
    belongs_to :matchee, class_name: "User"
    # has_many :chats, dependent: :destroy // add this later
  

end