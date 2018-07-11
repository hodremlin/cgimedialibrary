class MobileVideoUploader < MediaItemUploader
   def extension_whitelist
    %w[mp4 webm]
  end
end
