class PicturesController < ApplicationController
  def index
    @pictures = Classe.find(params[:class_id]).pictures
  end

  def new
    @classe = Classe.find(params[:class_id])
    @pictures = Classe.find(params[:class_id]).pictures
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.classe = Classe.find(params[:class_id])
    if @picture.save
      redirect_to new_class_picture_path(current_user.classes.last)
    else
      render :new
    end
  end

  private

  def picture_params
    params.require(:picture).permit(photos: [])
  end
end
