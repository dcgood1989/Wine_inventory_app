class RegionsController < ApplicationController
before_action :get_all_wineries
  def index
    @regions = Region.all
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new(region_params)
    @region.save
    flash[:notice] = "New Winery Added!"
    redirect_to region_path(@region)
  end

  def show
    @region = Region.find(params[:id])
  end

  def edit
    @region = Region.find(params[:id])
  end

  def update
    @region = Region.find(params[:id])
    if @region.update(region_params)
      flash[:notice] = "Region successfully updated"
      redirect_to regions_path
    else
      render :edit
    end
  end


  def destroy
    region = Region.find(params[:id])
    region.destroy
    redirect_to regions_path
    flash[:notice] = "The Region has been successfully deleted"
  end

private

  def region_params
    params.require(:region).permit(:region_name, :country, :state)
  end

  def get_all_wineries
    @wineries = Winery.all
  end


end
