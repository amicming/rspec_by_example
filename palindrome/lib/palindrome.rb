class Palindrome
	def self.palindrome? word
		word.reverse.casecmp(word) == 0
	end

	def self.palindrome_solution1? word
		word.downcase.reverse.eql?(word.downcase)
	end

end