class ProfilesController < ApplicationController
	# def create
	#   @user = User.new(user_params)
	#   if @user.save
	#     redirect_to root_url, :notice => "You have succesfully signed up!"
	#   @profile = Profile.new(params[:profile].permit(:first_name, :second_name, :home_town, :date_of_birth))
	#   if @profile.save
	#     redirect_to edit_profile_path, :notice => "You have succesfully signed up!"
	#   else
	#     render "new"
	#   end
	# end

	def index
			@profile = Profile.all 
	end

	def edit
			@profile = Profile.find(params[:id])
	end

	def update
			@profile = Profile.find(params[:id])
	 
	  	if @profile.update(params[:profile].permit(:username, :first_name, :second_name, :home_town, :gender, :date_of_birth))
	    	flash[:notice] = 'Profile updated'
	    	redirect_to profile_path
	  	else
	    	render 'edit'
	  	end

	end

	def show
			@profile = Profile.find(params[:id])
			@user = User.find(params[:id])
	end

end
