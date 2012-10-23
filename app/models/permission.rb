class Permission < ActiveRecord::Base
  attr_accessible :action, :thing, :user
  belongs_to :user
  belongs_to :thing, :polymorphic => true
end
