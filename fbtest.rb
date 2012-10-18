#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby
require 'rubygems'
require 'sinatra'


authorize_url = "https://graph.facebook.com/oauth/authorize"
access_token_url = "https://graph.facebook.com/oauth/access_token"

your_app_id = "???"
client_secret = "???"
redirect_uri = "http://localhost:4567/oauth_callback"

get "/" do
  redirect "#{authorize_url}?client_id=#{your_app_id}&redirect_uri=#{redirect_uri}"
end

get "/more" do
  redirect "#{authorize_url}?client_id=#{your_app_id}&redirect_uri=#{redirect_uri}&scope=user_photos,user_videos,publish_stream"
end

get "/oauth_callback" do
  redirect "#{access_token_url}?client_id=#{your_app_id}&redirect_uri=#{redirect_uri}&client_secret=#{client_secret}&code=#{params[:code]}"
  #guardar en la bd el acces_token
  params[:access_token]
end






