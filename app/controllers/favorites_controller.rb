class FavoritesController < ApplicationController
  before_action :find_media_item
  before_action :find_favorite, only: :destroy

  def create
    if Favorite.create(favorited: @media_item, user: current_user)
      redirect_to :back, notice: 'Project has been favorited'
    else
      redirect_to :back, alert: 'Something went wrong...*sad panda*'
    end
  end
  
  def destroy
    if @favorite.destroy
      redirect_to :back, notice: 'Project is no longer in favorites'
    else
      redirect_to :back, alert: 'Something went wrong...*sad panda*'
    end
  end
  
  private

  def is_a_media_item?
    Object.const_defined?(params[:media_item].classify) &&
      MediaItem.descendants.include?(params[:media_item].classify.constantize)
  end
  
  def find_media_item
    if is_a_media_item? && (klass = params[:media_item].classify.constantize)
      @media_item = klass.find(params[:id])
    else
      render status: 404
    end
  end
  
  def find_favorite
    if (favorite = Favorite.find_by(favorited: @media_item, user: current_user))
      @favorite = favorite
    else
      render status: 404
    end
  end
end