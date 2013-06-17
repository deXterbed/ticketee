class User < ActiveRecord::Base
  extend OmniauthCallbacks
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, 
         :token_authenticatable, :omniauthable, :omniauth_providers => [:twitter, :github]

  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :name
  has_many :permissions

  before_save :ensure_authentication_token

  def self.reset_request_count!
    update_all("request_count = 0", "request_count > 0")
  end
  
  def to_s
    "#{display_name} (#{admin? ? "Admin" : "User"})"
  end

  def display_name
    if twitter_id
      "#{twitter_display_name} (@#{twitter_screen_name})"
    elsif github_id
      "#{github_display_name} (#{github_user_name})"
    else
      email  
    end
  end
end
