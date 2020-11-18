class PicturesController < ApplicationController
  def index
    @pictures = Classe.find(params[:class_id]).pictures
  end

  def new
    @classe = Classe.find(params[:class_id])
    @picture = Picture.new
  end

  private

  def article_params
    params.require(:picture).permit(photos: [])
  end
end
