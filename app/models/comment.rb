class Comment < ActiveRecord::Base
  attr_accessible :text, :ticket, :user

  belongs_to :user

  validates :text, :presence => true
end
