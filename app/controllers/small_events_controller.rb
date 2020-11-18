class SmallEventsController < ApplicationController
  def index
    @small_events = SmallEvent.all
  end

  def new
    @kid = Kid.find(params[:kid_id])
    @small_event = SmallEvent.new
  end

  def create
    @small_event = SmallEvent.new(small_event_params)
    if @small_event.save
      redirect_to small_event_path(@small_event)
    else
      render 'new'
    end
  end

  def show
    @small_event = SmallEvent.find(params[:id])
    @kid = Kid.new
  end

  def update
  end

  def destroy
  end

  private

  def small_event_params
    params.require(:small_event).permit(:start_nap_time_morning, :end_nap_time_morning, :lunch_description, :start_nap_time_afternoon, :end_nap_time_afternoon, :observation)
  end
end
