class PhotosController < ApplicationController

	def new
	end

	def create
		Photo.create(params[:photo].permit(:title, :text, :image, :tag_names))
		flash[:notice] = 'Photo added'
      	redirect_to photos_path
	end

	def index
		@photos = Photo.all
	end

	private
	def photo_params
	    params.require(:photo).permit(:title, :text, :image, :tag_names)
	end

	def show
  		@photo = Photo.find(params[:id])
	end


end
