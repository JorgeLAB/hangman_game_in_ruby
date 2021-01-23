def play(name)
  secret_word = raffle_secret_word

  errors = 0
  kicks = []
  points_until_now = 0

  while errors < 5

    kick = give_one_kick_valid kicks, errors

    kick_one_letter = kick.size == 1

    if kick_one_letter

      count_letters = secret_word.count(kick)
      if count_letters > 0
        letter_found(kick, count_letters)
      else
        letter_not_found
        errors += 1
      end

    else

      correct_word = kick == secret_word

      if correct_word
        word_correct
        points_until_now += 100
        break
      else
        word_incorrect
        errors += 1
        points_until_now -= 30
      end

    end
    kicks << kick
  end
  result_game points_until_now
end

def give_one_kick_valid(kicks, errors)

  loop do
    kick = give_one_kick(kicks, errors)

    if kicks.include? kick
      repeated_letter_response
    else
      return kick
    end
  end

end
