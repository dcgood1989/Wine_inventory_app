class Winery < ActiveRecord::Base

  belongs_to :user
  belongs_to :region

  validates :location, presence: true

  def location
    "#{region}, #{state}"
  end
end
