require 'pry'


H = 'Hearts'
S = 'Spades'
C = 'Clubs'
D = 'Diamonds'

SUITS = [H]
VALUES = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

new_deck = SUITS.product(VALUES)





computer_hand = 
player_hand = [ ]
current_deck = new_deck
binding.pry


puts "Lets go!"

card1 = player_hand.sample
card2 = computer_hand.sample
binding.pry



