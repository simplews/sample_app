if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJNVBY5E36TP5GY6Q'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['herokutestforme']
  end
end
