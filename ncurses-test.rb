#!/usr/bin/ruby

require 'ncurses.rb'
include Ncurses
load 'deck.rb'

$scr = Ncurses.initscr
Ncurses.start_color
$color_bg = Ncurses::COLOR_BLACK
$color_red = Ncurses::COLOR_RED
$color_white = Ncurses::COLOR_WHITE
Ncurses.init_pair(1, $color_red, $color_bg)
Ncurses.init_pair(2, $color_white, $color_bg)

#attr_red = Ncurses.COLOR_PAIR(1)
#attr_white = Ncurses.COLOR_PAIR(2)


def draw_card(card, y, x)
	if Ncurses.has_colors?
		if card.suit <= 2 
			Ncurses.attrset(Ncurses.COLOR_PAIR(1))
		else
			Ncurses.attrset(Ncurses.COLOR_PAIR(2))
		end
	end

	
	$scr.attrset(Ncurses.COLOR_PAIR(1))

	Ncurses.addstr(card.to_s)
	Ncurses.refresh
end


deck = get_deck(true)

scr = Ncurses.stdscr
scr_x = Ncurses.getmaxx(scr)
scr_y = Ncurses.getmaxy(scr)
#Ncurses.mvaddstr(1, 1, scr_x.to_s + " " + scr_y.to_s)


Ncurses.start_color


draw_card(deck.pop, 3, 22)
draw_card(deck.pop, 4, 22)

deck.each do |card|
	
end


Ncurses.refresh

sleep(2)

Ncurses.endwin



