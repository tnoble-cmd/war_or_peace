require './lib/card'

class Deck
    attr_reader :cards

    def initialize(card_arr)
        @cards = card_arr

    end

    def rank_of_cards_at(index)
        @cards[index].rank
    end

    def percent_high_ranking

    end

    def remove_card

    end

    def add_card

    end
end