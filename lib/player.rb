require './lib/deck'
require './lib/card'

class Player
    attr_reader :name, :has_lost
    attr_accessor :stack
    def initialize(name, stack)
        @name = name
        @stack = stack
        @has_lost = false

    end



end