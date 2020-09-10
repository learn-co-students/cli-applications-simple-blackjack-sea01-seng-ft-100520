require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
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
  cards = []
  cards[0] = deal_card
  cards[1] = deal_card
  display_card_total(cards.sum)
  return cards.sum

end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  if answer === 'h'
    card_total += deal_card
    return card_total
  elsif answer === 's'
    return card_total
  else
    invalid_command
    hit?(card_total)
  end
  # code hit? here
end

def invalid_command
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  count = 0
  count += initial_round
  while count < 21
    
    #binding.pry
    
    count = hit?(count)
    display_card_total(count)
  end
  end_game(count)
end
    
