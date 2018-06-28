class VideoUploader < MediaItemUploader
  def extension_whitelist
    %w[mp4 webm]
  end
end
