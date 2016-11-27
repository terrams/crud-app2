class ZombiesController < ApplicationController

  def index  
    @zombies = Zombie.all  
    render 'index.html.erb'
  end

  def new    
    render 'new.html.erb'
  end

  def create
    zombie = Zombie.new
    zombie.name = params[:name]    
    zombie.type = params[:type]
    zombie.weakness = params[:weakness]
    zombie.region = params[:region]
    zombie.speed = params[:speed]
    zombie.save
    flash[:success] = "Zombie successfully created !!"
    redirect_to "/zombies"
  end

  def show
    @zombie = Zombie.find_by id: params[:id]
    render 'show.html.erb'
  end

  def edit
    @zombie = Zombie.find_by id: params[:id]  
    render 'edit.html.erb'
  end

  def update 
    zombie_id = params[:id]
    zombie = Zombie.find_by(id: zombie_id)      
    zombie.name = params[:name]    
    zombie.type = params[:type]
    zombie.weakness = params[:weakness]
    zombie.region = params[:region]
    zombie.speed = params[:speed]
    zombie.save
    flash[:success] = "Zombie successfully updated !!"
    redirect_to '/zombies/#{zombie_id}'
  end

  def destroy
    zombie = Zombie.find_by(id: params[:id])
    zombie.destroy
    flash[:success] = "Zombie successfully deleted !!"
    redirect_to "/zombies"
  end

end
