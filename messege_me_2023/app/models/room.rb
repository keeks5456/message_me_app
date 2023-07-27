class Room < ApplicationRecord
    validates_uniqueness_of :name
    
    has_many :messages
    scope :public_rooms, -> {where(is_private: false)}
end
