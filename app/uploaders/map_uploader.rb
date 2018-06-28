class MapUploader < MediaItemUploader
  def extension_whitelist
    %w[jpg jpeg gif png]
  end
end
