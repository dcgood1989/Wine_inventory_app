class Winery < ActiveRecord::Base

  belongs_to :user
  belongs_to :region
  has_many :wines
  has_many :winery_comments

  def location
    "#{region}, #{state}"
  end
end
