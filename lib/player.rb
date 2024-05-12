require './lib/deck'
require './lib/card'

class Player
    attr_reader :name, :has_lost, :stack
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


end
