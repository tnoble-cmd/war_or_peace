require './lib/card'
require './lib/player'
require './lib/turn'
require './lib/wop_runner'

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

     #created a nested loop with the .each_with_index enumerable. While executed the outer loop will start with Suit(0) and pair with each value,index and rank.
     #it will increment through value and index until == 13 then the loop will increment to diamonds etc. All while passing in as arguments for new instances of cards.
     #rank[index] goes with the index of value.
        suit.each do |suit|
         value.each_with_index do |value, index|
            @cards << Card.new(suit, value, rank[index])
         end
        end
    end

    def shuffle
        @cards.shuffle
    end

    #return 2 arrays. assigned @cards.length /2 to split deck. 52/2 = 26 . .take will take up to the 26th, .drop will take every other not exceeding 26
    def deck_split
        split_deck = @cards.length / 2
        [@cards.take(split_deck), @cards.drop(split_deck)]
    end

end
