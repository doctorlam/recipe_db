CarrierWave.configure do |config|
  
  # Use local storage if in development or test
  if Rails.env.development? || Rails.env.test?
    CarrierWave.configure do |config|
      config.storage = :image
    end
  end
  
  # Use AWS storage if in production
  if Rails.env.production?
    CarrierWave.configure do |config|
  
  
  config.fog_credentials = {
    :provider               => 'AWS',
      :aws_access_key_id      => "YOUR AMAZON ACCESS KEY",
      :aws_secret_access_key  => "YOUR AMAZON SECRET KEY",
    :region                 => 'us-east-2'                        # optional, defaults to 'us-east-1'
  }
        config.storage = :fog

  config.fog_directory  = 'lam-fall'               # required
  #config.fog_host       = 'https://assets.example.com'           # optional, defaults to nil
  #config.fog_public     = false                                  # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
  end
  end
