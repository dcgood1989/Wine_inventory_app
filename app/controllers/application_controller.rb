class ApplicationController < ActionController::Base
helper_method :current_user


  protect_from_forgery with: :exception


  def current_user
    @current_user = User.find_by_id(session[:user_id])
  end

  def get_all_regions
    @regions = Region.all
  end

  def get_region
    @region = Region.find(params[:region_id])
  end

  def get_all_wineries
    @wineries = Winery.all
  end

  def get_all_wines
    @wines = Wine.all
  end
end
