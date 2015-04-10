class WinesController < ApplicationController
  before_action :find_region
  before_action :find_winery
  # before_action :get_all_regions
  # before_action :get_all_wineries

def index
  @wines = Wine.all
end

def new
  @wine = Wine.new
end

def create
  @wine = @winery.wines.new(wine_params)
  @wine.save
  flash[:notice] = "New Wine Added!"
  redirect_to region_winery_wines_path
end

def destroy
  @wine = Wine.find(params[:id])
  @wine.destroy
  redirect_to region_winery_wines_path
  flash[:notice] = "Wine has been deleted"
end

def edit
  @wine = Wine.find(params[:id])
end

def update
  @wine = Wine.find(params[:id])
  if @wine.update(wine_params)
    redirect_to region_winery_wines_path(@region, @winery)
    flash[:notice] = "You have updated"
  end
end

def show
  @wine = Wine.find(params[:id])
end


private

  def wine_params
    params.require(:wine).permit(:bottle_name, :bottle_year, :taste, :grape_type, :bottle_rating, :price, :amount, :winery_name).merge(:user_id => current_user.id).merge(:region_id) 
  end


  def find_region
    @region = Region.find(params[:region_id])
  end

  def find_winery
    @winery = Winery.find(params[:winery_id])
  end

  def get_all_regions
    @regions = Region.all
  end

  def get_all_wineries
    @wineries = Winery.all
  end
end
