class WinesController < ApplicationController

def index
  @wines = Wine.all
end

def new
  @wine = Wine.new
end

def create
  @wine = Wine.new(wine_params)
  @wine.save
  flash[:notice] = "New Wine Added!"
  redirect_to wines_path
end

def destroy
  @wine = Wine.find(params[:id])
  @wine.destroy
  redirect_to wines_path
  flash[:notice] = "Wine has been deleted"
end

def edit
  @wine = Wine.find(params[:id])
end

def update
  @wine = Wine.find(params[:id])
  if @wine.destroy
    redirect_to wines_path
    flash[:notice] = "You have updated"
  end
end

def show
  @wine = Wine.find(params[:id])
end


private

def wine_params
  params.require(:wine).permit(:bottle_name, :bottle_year, :taste, :grape_type, :bottle_rating, :price, :amount, :winery_name)
end
end
