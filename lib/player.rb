require './lib/deck'
require './lib/card'
require './lib/turn'
require './lib/wop_runner'

class Player
    attr_reader :name, :has_lost
    attr_accessor :stack
    def initialize(name, stack)
        @name = name
        @stack = stack
        @has_lost = false

    end

    def has_lost?
        if stack.cards.length == 0
            return @has_lost = true
        end
    end

    def card_count
        @stack.length
    end



end
