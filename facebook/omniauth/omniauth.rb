require 'bundler/setup'
require 'sinatra'
require 'omniauth-facebook'
require 'pry'

SCOPE = 'email,read_stream,publish_stream'
ENV['APP_ID'] = '268692613242267'
ENV['APP_SECRET'] = '49a2edd10567a5d8e430fb53c6e111d6'

class OmniauthConnect < Sinatra::Base
  
  set :protection, :except => :frame_options
  enable :sessions

  use Rack::Session::Cookie
  use OmniAuth::Builder do
    provider :facebook, ENV['APP_ID'], ENV['APP_SECRET'], :scope => SCOPE
  end

  
  get '/' do
    redirect '/auth/facebook'
  end

  get '/auth/:provider/callback' do    
    #content_type 'application/json'
    MultiJson.encode(request.env)
    #binding.pry
    #request.env
  end

end







