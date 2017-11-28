require 'palindrome'

RSpec.describe Palindrome do
	context 'word is a palindrome' do
		it 'should read the same forwards as backwards' do
			word = "Madam"
			expect(Palindrome.palindrome? word).to be_truthy
		end
	end

	context 'word is not a palindrome' do
		it 'should not read the same forwards as backwards' do
			word = "Food"
			expect(Palindrome.palindrome? word).to be_falsey
		end
	end
end