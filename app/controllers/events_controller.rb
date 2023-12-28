class EventsController < ApplicationController
  def index
    @events = Event.all
    render :index
  end

  def show
    @event = Event.find_by(id: params[:id])
    render :show
  end

  def create
    @event = Event.create(
      title: params[:title],
      image: params[:image],
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
    )
    @event.save
    if @event.valid?
      render :show
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
