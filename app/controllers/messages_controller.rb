class MessagesController < ApplicationController
    before_action :require_user

    def create 
        # association between the login user and message will generate automatically
        message = current_user.messages.build(message_params)
        if message.save 
            # this result in refresh
            # redirect_to root_path
            ActionCable.server.broadcast('chatroom_channel', message.body)
        end
    end 

    private 

    def message_params 
        params.require(:message).permit(:body)
    end 

    def message_render(message)
        render(partial: 'message', locals: {message: message}) 
    end 
end 