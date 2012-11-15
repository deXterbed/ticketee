class User < ActiveRecord::Base
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :token_authenticatable

  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :permissions

  before_save :ensure_authentication_token

  def to_s
    "#{email} (#{admin? ? "Admin" : "User"})"
  end
end
