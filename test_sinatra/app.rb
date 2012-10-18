#!/Users/molz/.rvm/rubies/ruby-1.9.3-p125/bin/ruby
require 'rubygems'
require 'sinatra'




get "/" do
    @posts = Post.all(:order => [ :id.desc ], :limit => 20)    
	erb :index
end

=begin
configure do 
    enable :sessions
end

before do 
    content_type :txt
end

get '/set' do 
    session[:foo] = Time.now 
    "Session value set."
end

get '/fetch' do 
    "Session value: #{session[:foo]}"
end

get '/logout' do 
    session.clear 
    redirect '/fetch'
end
=end
