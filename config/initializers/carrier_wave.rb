if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      #:region => ENV['eu-central-1'],
      :aws_access_key_id     => ENV['AKIAIRU2F7JSBF46ZGLQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['herokutestforme']
  end
end
