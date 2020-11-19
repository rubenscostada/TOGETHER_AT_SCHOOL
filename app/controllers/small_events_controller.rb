class SmallEventsController < ApplicationController
  def index
    @kid = Kid.find(params[:kid_id])
    @small_events = @kid.small_events
  end

  def new
    @kid = Kid.find(params[:kid_id])
    @small_event = SmallEvent.new
  end

  def create
    @small_event = SmallEvent.new(small_event_params)
    @kid = Kid.find(params[:kid_id])
    @small_event.kid = @kid
    if @small_event.save
      redirect_to kid_small_events_path(@kid)
    else
      redirect_to new_kid_small_event_path(params[:kid_id])
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

  def kid_params
    params.require(:small_event).permit(:kid_id)
  end
end
