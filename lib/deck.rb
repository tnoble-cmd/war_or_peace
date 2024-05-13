require './lib/card'
require './lib/player'
require './lib/turn/'

class Deck
    attr_accessor :cards

    def initialize(card_arr)
        @cards = card_arr
        

    end

    def rank_of_cards_at(index)
        @cards[index].rank
    end

    def high_ranking_cards
        @cards.select {|cards| cards.rank >= 11}
    end

    #percent form num / total_num * 100 
    #Will use the .to_f method to change an int > float. will calculate num high rank cards / num of cards
    def percent_high_ranking
        (high_ranking_cards.length.to_f / @cards.length * 100).round(2)
    end
        #changed .shift() to .slice! to remove the (index arg) from the cards array
    def remove_card(index)
        @cards.slice!(index)
    end

    def add_card(card)
        @cards.append(card)
    end
end