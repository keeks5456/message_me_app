class Message < ApplicationRecord
    validates :body, presence: :true
    after_create_commit { broadcast_append_to self.room}
    
    belongs_to :user
    belongs_to :room
    
    scope :custom_display, -> { order(:created_at).last(20) }
end
