CarrierWave.configure do |config|
  fog_config = YAML.load_file("#{Rails.root}/config/fog.yml").with_indifferent_access[Rails.env]
  config.root            = "#{Rails.root}/#{fog_config[:root]}"
  config.cache_dir       = "#{Rails.root}/#{fog_config[:cache_dir]}"

  config.fog_provider    = 'fog/rackspace/storage'
  config.fog_credentials = fog_config[:credentials]
  config.fog_directory   = fog_config[:directory]
  config.fog_public      = true
  config.asset_host      = fog_config[:host]
end