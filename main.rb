require_relative "hangman"
require_relative "ui"

name = give_welcome

loop do
  play name
  break if stop_game?
end
