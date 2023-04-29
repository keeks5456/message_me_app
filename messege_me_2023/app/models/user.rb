class User < ApplicationRecord
    
    has_secure_password
    
    validates :username, presence: true, uniqueness: {case_sensitive: false}, length: { minimum: 3, maximum: 25}
    validates :password, length: { in: 6..20 }
    
    has_many :messages, dependent: :destroy
    has_many :friend_requests_as_requestor, foreign_key :requestor_id, class_name: :FriendRequest
    has_many :friend_requests_as_receiver, foreign_key :receiver_id, class_name: :FriendRequest

    
    
    private 
end
