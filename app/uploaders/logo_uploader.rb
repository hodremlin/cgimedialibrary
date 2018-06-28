class LogoUploader < MediaItemUploader
  def extension_whitelist
    %w[jpg jpeg gif png]
  end
end
