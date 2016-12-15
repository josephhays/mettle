class Member < ActiveRecord::Base
  has_one :profile
  before_validation :default_password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 def default_password
   self.password = ENV["DEFAULT_PASSWORD"] if self.password.nil?
 end

end
