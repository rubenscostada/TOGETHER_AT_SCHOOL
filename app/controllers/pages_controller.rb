class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in? == false
      redirect_to new_user_session_path
    end
    fetch_latest_messages
  end

  private

  def fetch_latest_messages
    @message_array = []
    if user_signed_in?
      current_user.chatrooms.each do |chatroom|
        chatroom.messages.where.not(user_id: "#{current_user.id}").order("created_at").each do |message|
          @message_array << message
        end
      end
    end
    @message_array
    # Iterate through chatrooms of current_user
    # Get messages from chatroom that were not send from current_user
    # order by created_at
    # store in array
    # get 2 most recent messages
    # should return an array with 2 latest messages
  end
end
# .order("created_at").last(2)
