class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create, :get_current_user]
  # before_action :set_user, only: [:show] #:update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    set_user
    render json: @user
  end

  # POST /users
  # signup
  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      # binding.pry
      render json: {user: UserSerializer.new(@user), jwt: @token}, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def get_current_user
    if logged_in?
      render json: {user: current_user}, status: :ok
    else
      render json: {errors: ["User not logged in."]}, status: :ok
    end
  end

  # PATCH/PUT /users/1
  # def update
  #   if @user.update(user_params)
  #     render json: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /users/1
  def destroy
    set_user
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:first_name, :last_name, :password, :password_confirmation, :email)
    end
end
