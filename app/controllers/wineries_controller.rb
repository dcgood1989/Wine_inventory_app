class WineriesController < ApplicationController

  def index
    @wineries = Winery.all
  end

  def new
    @winery = Winery.new
  end

  def create
    @winery = Winery.new(winery_params)
    @winery.save
    flash[:notice] = "New Winery Added!"
    redirect_to winery_path(@winery)
  end

  def show
    @winery = Winery.find(params[:id])
  end

  def edit
    @winery = Winery.find(params[:id])
  end

  def update
    @winery = Winery.find(params[:id])
    if @winery.update(winery_params)
      flash[:notice] = "Winery Was Updated Successfully"
      redirect_to winery_path(@winery)
    else
      render :edit
    end
  end

  def destroy
    winery = Winery.find(params[:id])
    winery.destroy
    redirect_to wineries_path
    flash[:notice] = "The Winery has been successfully deleted"
  end




private

  def winery_params
    params.require(:winery).permit(:winery_name, :region, :state, :rating)
  end

end
