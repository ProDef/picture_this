class PhotosController < ApplicationController
before_filter :authenticate_user!
	def new
		@photo = Photo.new
	end

	def create
		Photo.create(params[:photo].permit(:title, :text, :image, :tag_names))
		flash[:notice] = 'Photo added'
      	redirect_to photos_path
	end

	def index
		@photos = Photo.all
	end



	def show
  		@photo = Photo.find(params[:id])
	end

	def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy
		 
		redirect_to photos_path
	end


	def favourite
		@photo = Photo.find(params[:id])

    type = params[:type]
    if type == "favourite"
      current_user.favourites << @photo
      redirect_to :back, notice: "You favourited #{@photo.title}"
      
    elsif type == "unfavourite"
      current_user.favourites.delete(@photo)
      redirect_to :back, notice: "Unfavourited #{@photo.title}"

    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end



	private
	def photo_params
	    params.require(:photo).permit(:title, :text, :image, :tag_names)

	end
end
