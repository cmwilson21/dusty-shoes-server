class Api::V1::TripsController < ApplicationController
  before_action :set_trip, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:create, :destroy, :show, :update]


  # def index
  #   @trips = Trip.all
  #   render json: @trips
  # end

  def index
    if params[:user_id]
      @user = User.find(params[:user_id])
      @trips = @user.trips
    else
      @trips = Trip.all
    end
    render json: @trips, include: :user
  end

  def show
    render json: @trip
  end

  
  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      render json: @trip, status: :created
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  
  def update
    if @trip.update(trip_params)
      render json: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @trip.destroy
  end

  private
    def set_trip
      @trip = Trip.find(params[:id])
    end

    def trip_params
      params.permit(:city, :country, :image_url, :been_there, :reason, :user_id)
    end
end
