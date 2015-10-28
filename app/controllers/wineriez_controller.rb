class WineriezController < ApplicationController

  def index
    @wineries = current_user.wineries
    @regions = current_user.regions
  end
end
