require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('twenty_one_messages.yml')

H = 'Hearts'
S = 'Spades'
C = 'Clubs'
D = 'Diamonds'

new_deck = [[H, 'A'], [H, '2'], [H, '3'], [H, '4'], [H, '5'], [H, '6'], [H, '7'], [H, '8'], [H, '9'], [H, '10'], [H, 'J'], [H, 'Q'], [H, 'K'],
            [S, 'A'], [S, '2'], [S, '3'], [S, '4'], [S, '5'], [S, '6'], [S, '7'], [S, '8'], [S, '9'], [S, '10'], [S, 'J'], [S, 'Q'], [S, 'K'], 
            [C, 'A'], [C, '2'], [C, '3'], [C, '4'], [C, '5'], [C, '6'], [C, '7'], [C, '8'], [C, '9'], [C, '10'], [C, 'J'], [C, 'Q'], [C, 'K'],
            [D, 'A'], [D, '2'], [D, '3'], [D, '4'], [D, '5'], [D, '6'], [D, '7'], [D, '8'], [D, '9'], [D, '10'], [D, 'J'], [D, 'Q'], [D, 'K']]


player_hand = [ ]
dealer_hand = [ ]

def prompt(msg)
  puts "=> #{msg}"
  sleep(1)
end

def initial_hand(hand)
  2.times do
    card = DECK.sample
    hand << card
    DECK.delete(card)
  end
end

def hit(hand)
  card = DECK.sample
  hand << card
  puts "#{card[1]} of #{card[0]}"
  sleep(2)
  DECK.delete(card)
end

def view_all_cards(hand)
  hand.each do |suit, card|
    puts "#{card} of #{suit}"
  end
  prompt("Hand total = #{hand_total(hand)}")
end

def view_dealers_cards(hand)
  prompt("Dealer's hand:")
  puts "#{hand[1][1]} of #{hand[1][0]}"
  puts "Unknown"
end

def dealers_turn(hand)
  loop do
    view_all_cards(hand)
    if hand_total(hand) >= 17
      break
    else
      hit(hand)
    end
    system('clear')
  end
  hand_total(hand)
end

def hand_total(hand)
  total = 0
  hand.map do |card|

    if card.include?('J') || card.include?('Q') || card.include?('K')
      total += 10
    end

    if card.include?('A') # This needs more work
      if (total + 11) > 21
        total += 1
      else
        total += 11
      end
    end

    current_card = card[1].to_i
    new_total = total + current_card
    total = new_total
  end

  hand.select do |card|
    if card.include?('A') && total > 21
      total -= 10
    end
  end
  total
end

def outcome(hand)
  if hand_total(hand) > 21
    system('clear')
    prompt("BUST!")
    'bust'
  elsif hand_total(hand) == 21
    system('clear')
    prompt("Twenty-One!")
    'twenty_one'
  else
    hand_total(hand)
  end
end

def who_won?(hand_one, hand_two)
  if hand_one > 21
    prompt("Dealer wins!")
  elsif hand_two > 21
    prompt("Player wins!!")
  elsif hand_one > hand_two
    prompt("Player wins!!")
  elsif hand_one < hand_two
    prompt("Dealer wins!")
  else
    prompt("It's a draw!")
  end
end

loop do
DECK = new_deck
player_hand = [ ]
dealer_hand = [ ]
prompt("Welcome to Twenty-One!")
prompt("Try to be the closest to 21 without going over.")
  loop do
    initial_hand(player_hand)
    initial_hand(dealer_hand)
    loop do
      system('clear')
      view_dealers_cards(dealer_hand)
      prompt("Your hand:")
      view_all_cards(player_hand)
      hand_total(player_hand)
      p "What would you like to do? (hit or stay)"
      move = gets.chomp
      if move == 'hit'
        hit(player_hand)
        hand_total(player_hand)
        outcome(player_hand)
        if outcome(player_hand) == 'bust' || outcome(player_hand) == 'twenty_one'
          break
        end
        system('clear')
      else
        break
      end
    end
    if hand_total(player_hand) <= 21
      prompt("Dealer goes!")
      dealers_turn(dealer_hand)
      outcome(dealer_hand)
      sleep(2)
      break
    else
      break
    end
    break
  end
  system('clear')
  prompt("Your hand: #{hand_total(player_hand)}")
  prompt("Dealer's hand: #{hand_total(dealer_hand)}")
  who_won?(hand_total(player_hand), hand_total(dealer_hand))

  system('clear')
  prompt("Would you like to play another hand? ('y' or 'n')")
  again = gets.chomp
  if again == 'y'
    system('clear')
    next
  else
    break
  end

end
system('clear')
prompt("Thanks for playing Twenty-One, goodbye!")
