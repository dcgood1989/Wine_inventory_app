class WineriezController < ApplicationController

  def index
    @wineries = Winery.all
    @regions = Region.all
  end
end
