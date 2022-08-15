class GamesController < ApplicationController
  def new
# afficher grille aléatoire et formulaire
    @letters = [*('A'..'Z')].sample(10)
# formulaire envoyé à score avec POST
  end
  def score
    @word = params["score"]
    @word.split("").all? { |letter| @letters.include? letter }
#   raise
  end
end
