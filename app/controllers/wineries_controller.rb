class WineriesController < ApplicationController
  before_action do
    @region = Region.find(params[:region_id])
  end
  before_action :get_all_regions


  def index
    @wineries = @region.wineries
  end

  def new
    @winery = @region.wineries.new
  end

  def create
    @winery= @region.wineries.new(winery_params)
    if @winery.save
      flash[:notice] = "New Winery Added!"
      redirect_to region_wineries_path(@region)
    else
      render :new
    end
  end


  def show
    @winery = Winery.find(params[:id])
    @winery_comment = WineryComment.new
  end

  def edit
    @winery = Winery.find(params[:id])
  end

  def update
    @winery = Winery.find(params[:id])
    if @winery.update(winery_params)
      flash[:notice] = "Winery Was Updated Successfully"
      redirect_to region_winery_path(@region, @winery)
    else
      render :edit
    end
  end

  def destroy
    winery = @region.wineries.find(params[:id])
    winery.destroy
    redirect_to region_wineries_path(@region)
    flash[:notice] = "The Winery has been successfully deleted"
  end




private

  def winery_params
    params.require(:winery).permit(:winery_name, :state, :rating).merge(:user_id => current_user.id)
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
