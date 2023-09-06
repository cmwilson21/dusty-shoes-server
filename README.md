# Getting Started With Dusty Shoes Server

This repository is the backend for the Dusty Shoes travel app. Fork and clone this repostiory and run bundle install to prep the backend. To get the React front end going, fork and clone the [front end](https://github.com/isabelschoepd/dusty-shoes-client) and follow the directions in the README.md. 

Once everything is ready, run -
rails db:create
rails db:migrate
rails s


## Technologies Used
  - Ruby on Rails
  - JWT Auth
  - Bcrypt
  - RESTful principles
  - Full Crud


## Code Preview
Login Process
```   
def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      @token = encode_token(user_id: @user.id)
      render json: {user: UserSerializer.new(@user), jwt: @token}, status: :ok
    else
      render json: {errors: ["Email or password did not match"]}, status: 422
    end
  end
  ```
