class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all  
  end 

  def show
    @gossip = Gossip.find(params['id'])
  end 
  
  def new
    @gossip = Gossip.new
  end

  # def create
  #   @gossip = Gossip.new(title: params[:title], content: params[:content], user: User.find(params[:id]))

  #   if @gossip.save
  #     flash[:notice] = 'All good. Your gossip has been saved!'
  #     redirect_to root_path 
  #   else
  #     render '/gossips/new'
  #   end
  # end

  def create
    @gossip = Gossip.create(gossip_params)
    @gossip.user = User.find_by(id: session[:user_id])
    if @gossip.save
      flash[:success] = "Potin bien créé !"
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(params[:id])
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
  end
    
end
