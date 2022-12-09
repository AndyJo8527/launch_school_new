require 'pry'

H = 'Hearts'
S = 'Spades'
C = 'Clubs'
D = 'Diamonds'

SUITS = [H, S, C, D]
VALUES = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']

new_deck = SUITS.product(VALUES)

p new_deck
