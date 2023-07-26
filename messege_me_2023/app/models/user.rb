class User < ApplicationRecord
    
    has_secure_password
    
    validates :username, presence: true, uniqueness: {case_sensitive: false}, length: { minimum: 3, maximum: 25}
    validates :password, length: { in: 6..20 }
    # messages
    has_many :messages, dependent: :destroy
    
    scope :all_except, -> (user) {where.not(id:user)}
    private 
end
