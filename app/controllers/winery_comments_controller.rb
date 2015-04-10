class WineryCommentsController < ApplicationController

  before_action do
    @region = Region.find(params[:region_id])
  end
  
  before_action do
    @winery = Winery.find(params[:winery_id])
  end

  def new
    @winery_comment = Winery_comment.new
  end

  def create
    winery_comment = @winery.winery_comments.new(winery_comment_params)
    winery_comment.save
    redirect_to region_winery_path(@region, @winery)
end

private

  def winery_comment_params
    params.require(:winery_comment).permit(:content).merge(:user_id => current_user.id)
  end

end
