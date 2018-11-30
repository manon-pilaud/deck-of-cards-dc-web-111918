require 'pry'
class Deck
 attr_accessor :cards
 def initialize
   @cards = []
   suits = ["-Hearts","-Clubs","-Diamonds", "-Spades"]
   ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
   suits.collect do |suit|
     ranks.collect do |rank|
       @cards << Card.new(suit,rank)
     end
   end
  #iterate over and create new instance of card and then shuffle in @cards
 end
  def choose_card
    if cards.length > 0
        pick = cards.sample
        cards.delete(pick)
    else
        "No more cards in deck"
    end
    pick
  end

end

class Card
  attr_accessor :suit, :rank
    def initialize(suit,rank)
        @suit = suit
        @rank = rank
    end
end
