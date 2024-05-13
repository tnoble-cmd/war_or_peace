require './lib/card'
require './lib/deck'
require './lib/player'

class Turn
    attr_reader :player_1, :player_2, :spoils_of_war
    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2 
        @spoils_of_war = []

    end

    def type #create symbol identifier per turn
        if basic?
            :basic
        elsif mutually_assured_destruction?
            :mutually_assured_destruction
        elsif war?
            :war
        end
    end

    def basic?
        player_1.stack.rank_of_cards_at(0) != player_2.stack.rank_of_cards_at(0)
    end

    def war?
        player_1.stack.rank_of_cards_at(0) == player_2.stack.rank_of_cards_at(0)
    end
        #face up is equal, put one card face down and another face up, if both equal NO WIN. No spoil of war
    def mutually_assured_destruction?
        player_1.stack.rank_of_cards_at(0) == player_2.stack.rank_of_cards_at(0) &&
        player_1.stack.rank_of_cards_at(2) == player_2.stack.rank_of_cards_at(2)
    end

    def pile_cards
        if type == :basic
            @spoils_of_war << player_1.stack.remove_card(0)
            @spoils_of_war << player_2.stack.remove_card(0)
        end

        if type == :war
            @spoils_of_war << player_1.stack.remove_card(0..2)
            @spoils_of_war << player_2.stack.remove_card(0..2)
        end

        if type == :mutually_assured_destruction
          3.times do 
            player_1.stack.remove_card(0)
            player_2.stack.remove_card(0)
          end
        end
        
    end

    def winner
        if type == :basic
            if player_1.stack.rank_of_cards_at(0)>player_2.stack.rank_of_cards_at(0)
                return @player_1
            else
                return @player_2
            end
        elsif type == :war
            if player_1.stack.rank_of_card_at(2) > player_2.stack.rank_of_cards_at(2)
                return @player_1
            else
                return @player_2
            end
        end

    end


end