class Region < ActiveRecord::Base

  def location
    "#{state}, #{country}"
  end
end
