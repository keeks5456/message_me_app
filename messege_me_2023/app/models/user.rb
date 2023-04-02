class User < ApplicationRecord
    has_many :messages, dependent: :destroy
    
    validates :username, presence: true, uniqueness: {case_sensitive: false}, length: { minimum: 3, maximum: 25}
    validates :password, length: { in: 6..20 }

    has_secure_password
end
