require './lib/card'
require './lib/player'
require './lib/turn/'

class Deck
    attr_accessor :cards

    def initialize(card_arr = [])
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


    def dealer
        suit = ['Heart', 'Diamonds', 'Clubs', 'Spades']
        value = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
        rank = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]

        #created an outer loop and inner loop. While executed it will be the value, along with index as arguments. Suit(0) will pair with each value,index and rank(since i passed it next to rank)
        #it will increment through value and index until == 14 then the loop will increment to diamonds etc. All while passing in as arguments for new instances of cards. Each pair of 3 will create a card.
        suit.each do |suit|
         value.each_with_index do |value, index|
            @cards << Card.new(suit, value, rank[index])
         end
        end
    end

end
