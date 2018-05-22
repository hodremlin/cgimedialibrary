class WebsitesController < InheritedResources::Base

  private

    def website_params
      params.require(:website).permit(:title, :published_at, :vertical, :business_name, :pnotes_id, :web_url, :website_thumbnail)
    end
end

