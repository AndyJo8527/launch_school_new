require 'yaml'
MESSAGES = YAML.load_file('twenty_one_messages.yml')

H = 'Hearts'
S = 'Spades'
C = 'Clubs'
D = 'Diamonds'

SUITS = [H, S, C, D]
VALUES = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']

GOAL = 21
DEALER_STOP = 17

score = { 'Player': 0, 'Dealer': 0, 'Draw': 0 }

new_deck = SUITS.product(VALUES)

current_deck = []

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
    if hand_total(hand) >= DEALER_STOP
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
    total -= 10 if card[1] == 'A' && total > GOAL
  end
  total
end

def outcome(hand)
  if hand_total(hand) > GOAL
    system('clear')
    prompt(MESSAGES['bust'])
    'bust'
  elsif hand_total(hand) == GOAL
    system('clear')
    prompt(MESSAGES['twenty_one'])
    'twenty_one'
  else
    hand_total(hand)
  end
end

def who_won?(hand_one, hand_two)
  if hand_one > GOAL
    prompt(MESSAGES['d_win'])
    'dealer'
  elsif hand_two > GOAL
    prompt(MESSAGES['p_win'])
    'player'
  elsif hand_one > hand_two
    prompt(MESSAGES['p_win'])
    'player'
  elsif hand_one < hand_two
    prompt(MESSAGES['d_win'])
    'dealer'
  else
    prompt(MESSAGES['draw'])
    'draw'
  end
end

def up_score(winner, score)
  if winner == "player"
    score[:Player] += 1
  elsif winner == "dealer"
    score[:Dealer] += 1
  else
    score[:Draw] += 1
  end
end

def reset_score(score)
  score.map do |participant, _wins|
    score[participant] = 0
  end
end

prompt(MESSAGES['welcome'])
prompt("Try to be the closest to #{GOAL} without going over.)
   First to five wins... wins!")
sleep(1)

loop do
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
        if outcome(player_hand) == 'bust' ||
           outcome(player_hand) == 'twenty_one'
          break
        end
      elsif move == 'stay'
        break
      else
        prompt(MESSAGES['hit_stay'])
      end
    end

    if hand_total(player_hand) <= GOAL
      prompt("Dealer goes!")
      dealers_turn(dealer_hand, current_deck)
      outcome(dealer_hand)
      sleep(2)
    end

    system('clear')
    prompt("Your hand: #{hand_total(player_hand)}")
    prompt("Dealer's hand: #{hand_total(dealer_hand)}")
    winner = who_won?(hand_total(player_hand), hand_total(dealer_hand))
    up_score(winner, score)
    system('clear')
    prompt('Score:')
    score.each do |participant, wins|
      puts("#{participant}: #{wins}")
    end

    sleep(2)
    if score[:Player] == 5 || score[:Dealer] == 5
      break
    end
  end
  prompt(MESSAGES['again'])
  again = gets.chomp
  reset_score(score)
  break unless again == 'y'
end

system('clear')
prompt(MESSAGES['goodbye'])
