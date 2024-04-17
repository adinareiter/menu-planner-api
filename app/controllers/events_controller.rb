class EventsController < ApplicationController
  before_action :authenticate_user

  def index
    @events = current_user.events
    render :index
  end

  def show
    @event = current_user.events.find_by(id: params[:id])
    render :show
  end

  def create
    @event = Event.create(
      title: params[:title],
      image: params[:image],
      user_id: current_user.id,
    )
    @event.save
    if @event.valid?
      render :show
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @event = Event.find_by(id: params[:id])
    @event.update(
      title: params[:title] || @event.title,
      image: params[:image] || @event.image,
      user_id: current_user.id,
    )
    @event.save
    if @event.valid?
      render :show
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end
  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy
    render json: { message: "Event successfully deleted" }
  end
end
