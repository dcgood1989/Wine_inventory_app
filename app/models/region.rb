class Region < ActiveRecord::Base

  belongs_to :user

  has_many :wineries
  has_many :region_comments

  def location
    "#{state}, #{country}"
  end
end
