class ChatroomController < ApplicationController 
    before_action :require_user
    
    def index 
        # by rails convention it will looks for the message folder in views
        @message = Message.new
        @messages = Message.all 
    end 

end 