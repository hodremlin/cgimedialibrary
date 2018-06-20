module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "CGI Media Library"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end

def website_frame(url)
  content_tag(:iframe, '', src: url, width: 560, height: 315, frameborder: 0)     
end