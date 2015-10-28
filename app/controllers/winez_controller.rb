class WinezController < ApplicationController

  def index
    @wines = current_user.wines
    @wineries = current_user.wineries
    @region = current_user.regions
  end

end
