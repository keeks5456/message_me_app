class User < ApplicationRecord
    
    has_secure_password
    
    validates :username, presence: true, uniqueness: {case_sensitive: false}, length: { minimum: 3, maximum: 25}
    validates :password, length: { in: 6..20 }
    # messages
    has_many :messages, dependent: :destroy
    # friend request
    has_many :friend_requests, dependent: :destroy
    has_many :pending_friends, through: :friend_requests, source: :friend
    # friendships
    # has_many :friendships
    # has_many :friendships, foreign_key: :friend_id
    # has_many :friends, through: :friendships
    
    
    private 
end
