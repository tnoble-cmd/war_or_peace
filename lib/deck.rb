require './lib/card'

class Deck
    attr_reader :cards

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

    def remove_card
        @cards.shift()
    end

    def add_card

    end
end