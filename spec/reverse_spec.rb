require File.dirname(__FILE__) + "/reverse.rb"

describe "Reverse service" do
	it "should reverse the string you provided" do
		reverse('olivier').should==('reivilo')	
	end
end