#!/usr/bin/ruby

load 'deck.rb'

def main
	
	deck = get_deck(true)

	deck.each do |card|
		puts card.to_s
	end
	
	puts "Welcome to BLACKJACK!"

	puts "Play? (y/n)"
	
	in_play = gets.chomp
	
	if in_play = "y"
		player = []
		dealer = []

		player.push(deck.pop)
		player.push(deck.pop)

		player.each do |card|
			puts(card.to_s)
		end
	end
	
end

main
