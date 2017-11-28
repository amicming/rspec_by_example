class Palindrome
	def self.palindrome? word
		word.reverse.casecmp(word) == 0
	end

	def self.palindrome_solution1? word
		word.downcase.reverse.eql?(word.downcase)
	end

  def self.palindrome_solution2? word
  	word_length = word.length
  	mid = word_length / 2
  	mid_length = word_length % 2 == 0 ? mid : mid + 1

  	first_half = word.slice(0, mid_length)

  	if word_length % 2 == 0
  		second_half = word.slice(mid_length, mid_length).reverse
  	else
  		second_half = word.slice(mid_length -1, mid_length).reverse
  	end
  	first_half.downcase == second_half.downcase
  end
end