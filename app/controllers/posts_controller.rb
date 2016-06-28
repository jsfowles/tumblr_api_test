class PostsController < ApplicationController
  before_action :consumer_key, :consumer_secret

  def index
    client = Tumblr.configure do |config|
  end
end
