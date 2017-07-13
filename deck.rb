#!/usr/bin/ruby -w

class Card 
	attr_accessor :number, :face 
	
	def initialize(number, face)
		@number = number
		@face = face	
	end

	def to_string
		suit = ""
		if face == 1 then
			suit = "♥"
		elsif face == 2
			suit = "♦"
		elsif face == 3
			suit = "♠"
		elsif face == 4
			suit = "♣"
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
		
		return suit + num_s

		
	end

	def self.number
		@number
	end

	def self.face
		@face
	end

	
end


def get_deck(bln_shuffle)

	deck = [0..51]
	i = 0

	for suit in 1..4
		for number in 1..13
			deck[i] = Card.new(number, suit)
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
