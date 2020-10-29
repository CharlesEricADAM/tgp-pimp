class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.city = City.all.sample

    if @user.save
      puts "user ok"
      log_in(@user)
      redirect_to gossips_path
    else 
      puts "error user"
      puts @user.errors.messages
      redirect_to new_user_path
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    user_params = params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :password)
  end
end
