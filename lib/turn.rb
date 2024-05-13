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

    def type
        if basic?
            :basic
        elsif war?
            :war
        elsif mutually_assured_destruction
            :mutually_assured_destruction
        end
    end

    def basic?
        player_1.stack.rank_of_cards_at(0) != player_2.stack.rank_of_cards_at(0)
    end


end