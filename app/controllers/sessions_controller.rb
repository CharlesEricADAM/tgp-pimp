class SessionsController < ApplicationController

  def new
    
  end

  def create
    # cherche s'il existe un utilisateur en base avec l’e-mail
    user = User.find_by(email: params[:email])
    puts "$" *10
    puts user
    puts "$" *10

    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # redirige où tu veux, avec un flash ou pas
      puts "good redirect"
      redirect_to root_path

    else
      puts "bad redirect"
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
