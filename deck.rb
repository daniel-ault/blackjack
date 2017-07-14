#!/usr/bin/ruby -w

$use_unicode = false

class Card 
	attr_accessor :number, :suit, :unicode
	
	def initialize(number, suit)
		@number = number
		@suit = suit
		@unicode = true
	end

	def set_unicode(_unicode)
		@unicode = _unicode
	end

	def to_s
		suit_s = ""
		if suit == 1 then
			suit_s = @unicode ? "♥" : "H"
		elsif suit == 2
			suit_s = @unicode ? "♦" : "D"
		elsif suit == 3
			suit_s = @unicode ? "♠" : "S"
		elsif suit == 4
			suit_s = @unicode ? "♣" : "C"
		end 
		
		num_s = ""

		if @number == 1 then
			num_s = "A"
		elsif @number == 11 then
			num_s = "J"
		elsif @number == 12 then
			num_s = "Q"
		elsif @numbir == 13 then
			num_s = "K"
		else
			num_s = @number.to_s
		end
		
		return suit_s + num_s

		
	end

	def self.number
		@number
	end

	def self.suit
		@suit
	end

	
end


def get_deck(bln_shuffle)

	deck = [0..51]
	i = 0

	for suit in 1..4
		for number in 1..13
			deck[i] = Card.new(number, suit)
			deck[i].set_unicode($use_unicode)
			i = i + 1
		end
	end
	
	if bln_shuffle == true then
		deck = deck.shuffle
	end

	return deck	

	#deck.each do |card|
	#	puts card.to_string
	#end

end
