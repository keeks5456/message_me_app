class ChatroomController < ApplicationController
    before_action :require_user
    
    def index 
       @messages = Message.all
    end
    
    def new 
       
    end
end
