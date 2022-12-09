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
            
current_deck = []


player_hand = [ ]
dealer_hand = [ ]

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
    if card[1] == 'A' && total > 21
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
    prompt("You win!!")
  elsif hand_one > hand_two
    prompt("You win!!")
  elsif hand_one < hand_two
    prompt("Dealer wins!")
  else
    prompt("It's a draw!")
  end
end

loop do
current_deck = new_deck
player_hand = [ ]
dealer_hand = [ ]
prompt("Welcome to Twenty-One!")
prompt("Try to be the closest to 21 without going over.")
  loop do
    initial_hand(player_hand, current_deck)
    initial_hand(dealer_hand, current_deck)
    loop do
      system('clear')
      view_dealers_cards(dealer_hand)
      prompt("Your hand:")
      view_all_cards(player_hand)
      hand_total(player_hand)
      p "What would you like to do? (hit or stay)" # make it so they have to enter hit or stay or they get an error
      move = gets.chomp
      if move == 'hit'
        hit(player_hand, current_deck)
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
      dealers_turn(dealer_hand, current_deck)
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

  loop do 
    system('clear')
    prompt("Would you like to play another hand? ('y' or 'n')")
    again = gets.chomp
    if again == 'y'
      system('clear')
      next
    elsif again == 'n'
      system('clear')
      prompt("Thanks for playing Twenty-One, goodbye!")
      break
    else
      prompt("Please type 'y' or 'n'")
    end
  end

end
system('clear')
prompt("Thanks for playing Twenty-One, goodbye!")
