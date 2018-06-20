class MediaItemsController < ApplicationController
  def home
    @items = MediaItem.descendants.map { |klass| filtered_media_items(klass) }.flatten.sort_by(&:created_at)
  end
  
  def videos
    @videos = filtered_media_items(VideoPlayer)
  end
  
  def logos
    @logos = filtered_media_items(Logo)
  end
  
  def social
    @socials = filtered_media_items(Social)
  end
  
  def maps
    @maps = filtered_media_items(Map)
  end
  
  def banners
    @banners = filtered_media_items(Banner)
  end
  
  def featured
    @items = MediaItem.descendants.map { |klass| filtered_media_items(klass, true) }.flatten.sort_by(&:created_at)
  end
  
  def websites
    @websites = filtered_media_items(Website)
  end
  
  def favorites
    @items = MediaItem.descendants.map { |klass| filtered_media_items(klass, false).favorited_by(current_user) }.flatten.sort_by(&:created_at)
  end
  
  protected
  
  def filtered_media_items(klass, featured = false)
    klass.filtered(params[:category], params[:vertical], params[:tag], featured)
  end
end