if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJNVBY5E36TP5GY6Q'],
      :aws_secret_access_key => ENV['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'],
    }
    :region => ENV['eu-central-1']
    config.fog_directory     =  ENV['herokutestforme']
  end
end
