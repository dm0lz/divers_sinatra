# Exec : "rackup -p 4567 config.ru" to launch

require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-facebook'
require 'pry'

SCOPE = 'email,read_stream,publish_stream'
ENV['APP_ID'] = '??'
ENV['APP_SECRET'] = '??'

class App < Sinatra::Base
  
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
    # we can do something special here is +state+ param is canvas
    # (see notes above in /canvas/ method for more details)
    #binding.pry
    
    content_type 'application/json'
    MultiJson.encode(request.env)
  end


end


run App.new




