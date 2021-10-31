class Api::V1::JournalsController < ApplicationController
  before_action :set_journal, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:create, :show, :index]

  # GET /journals
  # def index
  #   @journals = Journal.all

  #   render json: @journals
  # end

  def index
    if params[:trip_id]
      @trip = Trip.find(params[:trip_id])
      @journals = @trip.journals
    else
      @journals = Journal.all
    end
    render json: @journals, include: :trip
  end

  # GET /journals/1
  def show
    render json: @journal
  end

  # POST /journals
  def create
    @journal = Journal.new(journal_params)

    if @journal.save
      render json: @journal, status: :created
    else
      render json: @journal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /journals/1
  def update
    if @journal.update(journal_params)
      render json: @journal
    else
      render json: @journal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /journals/1
  def destroy
    @journal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journal
      @journal = Journal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def journal_params
      params.permit(:trip_id, :content)
    end
end
