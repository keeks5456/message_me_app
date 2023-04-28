class User < ApplicationRecord
    
    validates :username, presence: true, uniqueness: {case_sensitive: false}, length: { minimum: 3, maximum: 25}
    validates :password, length: { in: 6..20 }
    
    has_many :messages, dependent: :destroy
    has_many :friends, dependent: :destroy
    
    has_secure_password
    
    private 
end
