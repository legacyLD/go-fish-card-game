class PlayingCard

  RANKS = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  SUITS = ["C", "D", "H", "S"]
  SORTED_CARDS = [
    "AC", "AD", "AH", "AS", "2C", "2D", "2H", "2S", "3C", "3D", "3H", "3S",
    "4C", "4D", "4H", "4S", "5C", "5D", "5H", "5S", "6C", "6D", "6H", "6S",
    "7C", "7D", "7H", "7S", "8C", "8D", "8H", "8S", "9C", "9D", "9H", "9S",
    "10C", "10D", "10H", "10S", "JC", "JD", "JH", "JS", "QC", "QD", "QH", "QS",
    "KC", "KD", "KH", "KS"
  ]

  attr_reader :rank, :suit, :face

  def initialize(arg)
    @suit = arg[:suit]
    @rank = arg[:rank]
    @face = @rank + @suit
  end

  # def rank
  #   p @rank
  # end
  #
  # def suit
  #   p @suit
  # end
  #
  # def face
  #   @face
  # end

  def to_s
    @face
  end

end

# Card Deck class
class CardDeck < PlayingCard

  def initialize (arg=true)
  end

  def cards
    @cards = SORTED_CARDS
  end

end

# Hand Of Cards class
class HandOfCards

  def initialize
  end

end

class CardPlayer

  def initialize
  end
end

# Driver Code
if __FILE__ == $0
  puts "This will only print if you run `ruby go_fish.rb`"
  # deck = CardDeck.new
  # # # puts "cards: #{deck.cards}"
  # # # puts "cards: #{deck}"
  # # # puts "shuffled: #{deck.shuffle}"
  # # puts "one drawn card: #{deck.draw_one}"
  # # puts "two drawn cards: #{deck.draw(2)}"

  # cards1 = deck.draw(5)
  # cards2 = deck.draw(5)
  # # # puts "cards1: #{cards1.join(" ")}"
  # # # puts "cards2: #{cards2.join(" ")}"

  # h1 = HandOfCards.new(cards1)
  # h2 = HandOfCards.new(cards2)

  # puts "hand1: #{h1}"
  # puts "hand2: #{h2}"

  # p1 = CardPlayer.new(hand: h1)
  # p2 = CardPlayer.new(hand: HandOfCards.new(deck.draw(5)) )

  # puts "Hands: [ #{p1.hand} ], [ #{p2.hand} ] (before)"

  # ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  # ranks.each do |rank|
  #   print "p1, do you have any... #{rank}'s?"
  #   if p1.hand.any?(rank: rank)
  #     cards = p1.hand.take!(rank: rank)
  #     print " -- YES: [ #{ cards.join(" ") } ]\n"
  #     p2.hand.push(*cards)
  #     break
  #   end
  #   print " -- NO!\n"
  # end

  # puts "Hands: [ #{p1.hand} ], [ #{p2.hand} ] (after)"
end
