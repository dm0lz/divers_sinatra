require "sinatra"

def reverse string
	string.each_char.to_a.reverse.join
end


get '/' do 
	'hello world !!!'
end