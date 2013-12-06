class PhotosController < ApplicationController

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
