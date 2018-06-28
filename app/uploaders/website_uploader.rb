class WebsiteUploader < MediaItemUploader
   def extension_whitelist
    %w[jpg png gif]
  end
end
