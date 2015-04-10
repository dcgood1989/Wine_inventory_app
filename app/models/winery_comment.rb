class WineryComment < ActiveRecord::Base
  belongs_to :winery
  belongs_to :region
  belongs_to :user
end
