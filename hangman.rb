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

def play(name)
	secret_word = raffle_secret_word

	errors = 0
	kicks = []
	points_until_now = 0

	while errors < 5
		
		kick = give_one_kick kicks, errors

		kick_one_letter = kick.size == 1

		next if kick_repeat kick, kicks
		
		if kick_one_letter

			count_letters = secret_word.count(kick)

			if count_letters > 0 
				puts "It was found letter \"#{kick}\" #{count_letters} times." 
			else
				puts "The letter was not found."
				errors += 1
			end

		else

			correct_word = kick == secret_word
		
			if correct_word
				puts "Congratulations, you win."
				points_until_now += 100
				break
			else
				puts "What a pity ... you wrong!"
				errors += 1
				points_until_now -= 30
			end
		
		end	

		kicks << kick	
	end

	puts "You receive #{ points_until_now } points."
end

def kick_repeat(kick, kicks)
	if kicks.include? kick
		puts "The kick was repeat." 
		true
	end
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

name = give_welcome

loop do 
	play name
	break if stop_game?
end 



