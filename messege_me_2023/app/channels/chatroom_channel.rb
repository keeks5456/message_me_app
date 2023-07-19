class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatroom_channe"
    
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  
  def speak 
    
  end
end
