def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end


def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}" #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" # code #prompt_user here
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
  card = 0
  2.times do
    card = card + deal_card
  end
  display_card_total(card)
  card
end

def hit?(total)
  prompt_user
  answer = get_user_input
  if answer == "h"
    total += deal_card
    total
  elsif answer == "s"
    total
  else
    invalid_command
    prompt_user
  end
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
