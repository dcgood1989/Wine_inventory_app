class RegionCommentsController < ApplicationController

  before_action do
    @region = Region.find(params[:region_id])
  end

  def new
    @region_comment = Region_comment.new
  end

  def create
    region_comment = @region.region_comments.new(region_comment_params)
    region_comment.save
    redirect_to region_path(@region)
end

private

  def region_comment_params
    params.require(:region_comment).permit(:content).merge(:user_id => current_user.id)
  end

end
