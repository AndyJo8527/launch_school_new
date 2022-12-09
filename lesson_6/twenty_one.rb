require 'yaml'
MESSAGES = YAML.load_file('twenty_one_messages.yml')

H = 'Hearts'
S = 'Spades'
C = 'Clubs'
D = 'Diamonds'

SUITS = [H, S, C, D]
VALUES = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']

new_deck = SUITS.product(VALUES)

current_deck = []

player_hand = []
dealer_hand = []

def prompt(msg)
  puts "=> #{msg}"
  sleep(1)
end

def initial_hand(hand, deck)
  2.times do
    card = deck.sample
    hand << card
    deck.delete(card)
  end
end

def hit(hand, deck)
  card = deck.sample
  hand << card
  puts "#{card[1]} of #{card[0]}"
  sleep(2)
  deck.delete(card)
end

def view_all_cards(hand)
  hand.each do |suit, card|
    puts "#{card} of #{suit}"
  end
  prompt("Hand total = #{hand_total(hand)}")
end

def view_dealers_cards(hand)
  prompt("Dealer's hand:")
  puts "#{hand[0][1]} of #{hand[0][0]}"
  puts "Unknown"
end

def dealers_turn(hand, deck)
  loop do
    view_all_cards(hand)
    if hand_total(hand) >= 17
      break
    else
      hit(hand, deck)
    end
    system('clear')
  end
  hand_total(hand)
end

def hand_total(hand)
  total = 0
  hand.map do |card|
    if card[1] == 'A'
      total += 11
    elsif card[1].to_i == 0
      total += 10
    else
      total += card[1].to_i
    end
  end

  hand.map do |card|
    total -= 10 if card[1] == 'A' && total > 21
  end
  total
end

def outcome(hand)
  if hand_total(hand) > 21
    system('clear')
    prompt(MESSAGES['bust'])
    'bust'
  elsif hand_total(hand) == 21
    system('clear')
    prompt(MESSAGES['twenty_one'])
    'twenty_one'
  else
    hand_total(hand)
  end
end

def who_won?(hand_one, hand_two)
  if hand_one > 21
    prompt(MESSAGES['d_win'])
  elsif hand_two > 21
    prompt(MESSAGES['p_win'])
  elsif hand_one > hand_two
    prompt(MESSAGES['p_win'])
  elsif hand_one < hand_two
    prompt(MESSAGES['d_win'])
  else
    prompt(MESSAGES['draw'])
  end
end

prompt(MESSAGES['welcome'])
prompt(MESSAGES['rules'])
sleep(1)

loop do
  system('clear')
  current_deck = new_deck
  player_hand = []
  dealer_hand = []
  initial_hand(player_hand, current_deck)
  initial_hand(dealer_hand, current_deck)

  loop do
    system('clear')
    view_dealers_cards(dealer_hand)
    prompt("Your hand:")
    view_all_cards(player_hand)
    hand_total(player_hand)
    prompt(MESSAGES['turn'])
    move = gets.chomp
    if move == 'hit'
      hit(player_hand, current_deck)
      hand_total(player_hand)
      outcome(player_hand)
      if outcome(player_hand) == 'bust' || outcome(player_hand) == 'twenty_one'
        break
      end
    elsif move == 'stay'
      break
    else
      prompt(MESSAGES['hit_stay'])
    end
  end

  if hand_total(player_hand) <= 21
    prompt("Dealer goes!")
    dealers_turn(dealer_hand, current_deck)
    outcome(dealer_hand)
    sleep(2)
  end

  system('clear')
  prompt("Your hand: #{hand_total(player_hand)}")
  prompt("Dealer's hand: #{hand_total(dealer_hand)}")
  who_won?(hand_total(player_hand), hand_total(dealer_hand))

  system('clear')
  prompt(MESSAGES['again'])
  again = gets.chomp
  break unless again == 'y'
end

system('clear')
prompt(MESSAGES['goodbye'])
