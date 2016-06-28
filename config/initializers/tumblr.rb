if Rails.env.development?
  tumblr = "#{Rails.root}/config/tumblr.yml"
  if File.exists? tumblr
    config = YAML.load_file(tumblr)
    config.each { |key, value| ENV[key] = value }
  else
    raise "Hey guy, you need the tumblr.yml file"
  end

  Tumblr.confige do |config|
    config.consumer_key = ENV['CONSUMER_KEY']
    config.consumer_secret = ENV['CONSUMER_SECRET']
end
