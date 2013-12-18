class Profile < ActiveRecord::Base

	  include Gravtastic
  	gravtastic

	belongs_to :user
	delegate :followers, :followed_users, :to => :users

end
