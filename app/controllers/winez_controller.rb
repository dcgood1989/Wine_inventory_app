class WinezController < ApplicationController

  def index
    @wines = Wine.all
    @wineries = Winery.all
    @region = Region.all
  end

end
