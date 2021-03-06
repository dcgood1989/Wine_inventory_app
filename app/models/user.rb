class User < ActiveRecord::Base
  has_secure_password

  has_many :regions
  has_many :wines
  has_many :wineries



  def full_name
    "#{first_name} #{last_name}"
  end

end
