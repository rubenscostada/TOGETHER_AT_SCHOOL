class ChatroomsController < ApplicationController
  def index
    @chatrooms = current_user.chatrooms
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new chatroom: @chatroom
    @messages = @chatroom.messages
  end
end
