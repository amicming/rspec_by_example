require 'spec_helper'
require 'card'

RSpec.describe 'a playing card' do

  it 'has a suit' do
  	raise unless Card.new(suit: :spades, rank: 4).suit == :spades
  end

  it 'has a rank' do
  	raise unless Card.new(suit: :spades, rank: 4).rank == 4
  end

  context 'a jack' do
  	it 'ranks higher than a 10' do
  		lower = Card.new(suit: :spades, rank: 10)
  		higher = Card.new(suit: :spades, rank: :jack)

  		raise unless higher.rank > lower.rank
  	end
  	it 'has a rank value is 11' do
  		raise unless Card.new(suit: :spades, rank: :jack).rank == 11
  	end
  end

  context 'a queen' do
    it 'rank higher than a jack' do
    	lower = Card.new(suit: :spades, rank: :jack)
    	higher = Card.new(suit: :spades, rank: :queen)

    	raise unless higher.rank > lower.rank
    end

    it 'has a rank value is 12' do
    	raise unless Card.new(suit: :spades, rank: :queen).rank == 12
    end
  end
  
  context 'a king' do
    it 'rank higher than a queen' do
    	lower = Card.new(suit: :spades, rank: :queen)
    	higher = Card.new(suit: :spades, rank: :king)

    	raise unless higher.rank > lower.rank
    end

    it 'has a rank value is 13' do
    	raise unless Card.new(suit: :spades, rank: :king).rank == 13
    end

  end

end