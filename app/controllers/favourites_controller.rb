class FavouritesController < ApplicationController
	before_filter :authenticate_user!
	def index
		@user = User.find params[:user_id]
		@favourites = FavouritePhoto.where(:user_id => @user.id)
		@favourite_photos = @favourites.map{|f| f.photo}.compact.uniq

		
	end
end
