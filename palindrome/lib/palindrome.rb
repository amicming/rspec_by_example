class Palindrome
	def self.palindrome? word
		word.reverse.casecmp(word) == 0
	end
end