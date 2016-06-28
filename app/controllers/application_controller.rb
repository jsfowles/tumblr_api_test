class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def consumer_key
    @consumer_key ||= ENV['CONSUMER_KEY']
  end

  def consumer_secret
    @consumer_secret ||= ENV['CONSUMER_SECRET']
  end
end
