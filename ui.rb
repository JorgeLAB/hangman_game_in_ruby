def give_welcome
  puts "Welcome to the hangman game!"
  puts "What your name, my dear ?"
  name = gets.strip
  puts "\n\n\n"
  puts "We are start the game for you, #{name}"
  name
end

def raffle_secret_word
  puts "Choise one word ..."
  secret_word = "testing"
  puts "Choise one word with #{secret_word.size} letters ... Good luck!"
  secret_word
end

def stop_game?
  puts "Dou you wish play again?"
  want_to_play = gets.strip
  do_not_want_to_play = want_to_play == "N"
end

def give_one_kick(kicks, errors)
  puts "\n\n"
  puts "Errors until now: #{ errors }"
  puts "Kicks until now: #{ kicks }"
  puts "Entry with one letter"
  kick = gets.strip
  puts "You entry with #{kick} letter."
  kick
end

def result_game points
  puts "You receive #{ points } points."
end

def letter_not_found
  puts "The letter was not found."
end

def letter_found(kick, count_letters)
  puts "It was found letter \"#{kick}\" #{count_letters} times."
end

def word_correct
  puts "Congratulations, you win."
end

def word_incorrect
  puts "What a pity ... you wrong!"
end

def repeated_letter_response
  puts "The kick was repeat."
end
