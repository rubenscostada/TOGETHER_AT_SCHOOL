class ChatroomsController < ApplicationController
  def index
  if current_user.admin?
    @chatrooms = Chatroom.all
  else
    @chatrooms = current_user.chatrooms
  end
  end

  def show
    if current_user.admin?
      @chatrooms = Chatroom.all
    else
      @chatrooms = current_user.chatrooms
    end
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new chatroom: @chatroom
    @messages = @chatroom.messages
  end
end
