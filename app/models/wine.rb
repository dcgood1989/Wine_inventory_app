class Wine < ActiveRecord::Base
  belongs_to :user
  belongs_to :winery
  has_many :wine_comments



end
