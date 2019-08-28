def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  value = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
end

def hit?(card_total)
  prompt_user
  hit_stop = get_user_input
  if hit_stop == "h"
    new_total = card_total + deal_card
  elsif hit_stop == "s"
    nil
  else
    invalid_command
    prompt_user
  end
  if new_total != nil
    card_total = new_total
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
