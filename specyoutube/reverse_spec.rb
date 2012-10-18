require File.dirname(__FILE__) + '/reverse.rb'

describe "somme de 2 chiffres" do 
	it "should take 2 nbres in parmaeters and returen the sum" do
		a=3
		b=5
		sum(a,b).should == 8
	end
end
	