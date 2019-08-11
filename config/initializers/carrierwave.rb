# config/initializers/carrierwave.rb

CarrierWave.configure do |config|

  if Rails.env.development?
  config.cache_dir = '/home/vagrant/uploads_tmp/tmp/uploads'
  config.root = '/home/vagrant/uploads_tmp/tmp'
  end

  config. fog_provider = 'fog/aws'
  config.fog_credentials = {
    :provider =>    'AWS',
    :aws_access_key_id =>  ENV["AWS_ACCESS_KEY"],
    :aws_secret_access_key => ENV["AWS_SECRET_KEY"],
    :region => ENV['S3_REGION'],
    :path_style => true
  }
  config.fog_directory = ENV["AWS_BUCKET"]
  config.fog_public = false
end