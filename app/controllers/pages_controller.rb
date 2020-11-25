class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if user_signed_in? == false
      redirect_to new_user_session_path
    end
    fetch_latest_messages
    @events = Event.where("start_time > ?", DateTime.now).order("start_time ASC")
    fetch_latest_photo
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
  end

  def fetch_latest_photo
    @photo_array = []
    Picture.all.each do |picture|
      picture.photos.each do |photo|
        @photo_array << photo
      end
    end
    @photo_array
  end
end
