class FriendRequest < ApplicationRecord
    # belongs_to :requestor, class_name: "User"
    # belongs_to :receiver, class_name: "User"
    
    belongs_to :user
    belongs_to :friendship, class_name: 'User'
    
    # has_many :chats, dependent: :destroy // add this later
  

end