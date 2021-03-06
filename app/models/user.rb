class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :lists
  has_many :goals, through: :lists

  def full_name
    if self.first_name && self.last_name
      return "#{self.first_name} #{self.last_name}"
    else
      return email
    end
  end


  

  
end
