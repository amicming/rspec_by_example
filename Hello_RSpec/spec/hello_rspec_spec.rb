require 'hello_rspec'

RSpec.describe HelloRSpec do
	it "should return 'Hello RSpec!!!' " do
		greeting = HelloRSpec.say_hello
		# expect the output from this line to match "Hello RSpec!!!"
		expect(greeting).to eq("Hello RSpec!!!")
	end
end 