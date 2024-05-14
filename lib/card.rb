require './lib/deck' 
require './lib/player'
require './lib/turn'
require './lib/wop_runner'

class Card
    attr_reader :suit, :value, :rank

    def initialize(suit, value, rank)
        @suit = suit
        @value = value
        @rank = rank

    end
end