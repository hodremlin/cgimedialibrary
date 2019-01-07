class MediaItemsController < ApplicationController


  def videos
    @videos = filtered_media_items(VideoPlayer)
    @videos = VideoPlayer.paginate(page: params[:page], per_page: 2).order('created_at DESC')
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def logos
    @logos = filtered_media_items(Logo)
    @logos = Logo.paginate(page: params[:page], per_page: 20).order('created_at DESC')
  end
  
  def social
    @socials = filtered_media_items(Social)
    @socials = Social.paginate(page: params[:page], per_page: 20).order('created_at DESC')
  end
  
  def maps
    @maps = filtered_media_items(Map)
    @maps = Map.paginate(page: params[:page], per_page: 20).order('created_at DESC')
  end
  
  def banners
    @banners = filtered_media_items(Banner)
    @banners = Banner.paginate(page: params[:page], per_page: 20).order('created_at DESC')
  end
  
  def featured
    @items = MediaItem.descendants.map { |klass| filtered_media_items(klass, true) }.flatten.sort_by(&:created_at)
  end
  
  def websites
    @websites = filtered_media_items(Website)
    @websites = Website.paginate(page: params[:page], per_page: 12).order('created_at DESC')
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def reviewtube
    @reviewtubes = filtered_media_items(Reviewtube)
    @reviewtubes = Reviewtube.paginate(page: params[:page], per_page: 20).order('created_at DESC')
  end
  
  def favorites
    @items = MediaItem.descendants.map { |klass| filtered_media_items(klass, false).favorited_by(current_user) }.flatten.sort_by(&:created_at)
  end
  
  def home
    if params[:search]
      @items = MediaItem.search(params[:search]).order("created_at DESC")
    else
      @items = MediaItem.descendants.map do |klass|
        filtered_media_items(klass)
      end.flatten.sort_by(&:created_at)
    end
  end
  

  
  protected
  
  def filtered_media_items(klass, featured = false)
    klass.filtered(params[:category], params[:vertical], params[:tag], params[:keywords], featured)
  end
  
  def get_typeahead_data
    @typeahead_data = MediaItem.descendants.map { |klass| klass.all.pluck(:title) }.flatten.sort
  end
end