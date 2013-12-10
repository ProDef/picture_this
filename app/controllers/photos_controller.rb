class PhotosController < ApplicationController
#before_filter :authenticate_user!
	def new
		@photo = Photo.new
	end

	def create
		Photo.create(params[:photo].permit(:title, :text, :image, :tag_names))
		flash[:notice] = 'Photo added'
      	redirect_to photos_path
	end

	def index
		@photo = Photo.all
	end



	def show
  		@photo = Photo.find(params[:id])
	end


	def edit
  		@photo = Photo.find(params[:id])
	end

	def update
	  	@photo = Photo.find(params[:id])
	 
	  	if @photo.update(params[:photo].permit(:title, :text, :image, :tag_names))
	    	flash[:notice] = 'Photo updated'
	    	redirect_to photos_path
	  	else
	    	render 'edit'
	  	end
	end

	def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy
		 
		redirect_to photos_path
	end

	private
	def photo_params
	    params.require(:photo).permit(:title, :text, :image, :tag_names)

	end
end
