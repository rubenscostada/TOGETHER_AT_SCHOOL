class EventsController < ApplicationController
  def index
    @events = Classe.find(params[:class_id]).events
  end

  def new
    @classe = Classe.find(params[:class_id])
    @events = Classe.find(params[:class_id]).events
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.classe = Classe.find(params[:class_id])
    if @event.save
      redirect_to new_class_event_path(current_user.classes.last)
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_time, :end_time)
  end
end
