class User < ApplicationRecord
    before_save :downcase_username
    
    validates :username, presence: true, uniqueness: {case_sensitive: false}, length: { minimum: 3, maximum: 25}
    validates :password, length: { in: 6..20 }
    
    has_many :messages, dependent: :destroy

    has_secure_password
    
    private 
    
    def downcase_username
        self.username = username.downcase
    end
end
