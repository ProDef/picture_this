class ProfilesController < ApplicationController
	# def create
	#   @user = User.new(user_params)
	#   if @user.save
	#     redirect_to root_url, :notice => "You have succesfully signed up!"
	#   else
	#     render "new"
	#   end
	# end



	def show
			@profile = Profile.find(params[:id])
	end

	def edit
	end

	def update
	end

end
