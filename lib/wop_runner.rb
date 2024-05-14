require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'


class Game
    attr_reader :turn_count
    @turn_count = 0

    def start
        p 'Welcome to War! (or Peace) This żame will be played with 52 cards.'
        p 'The player with 0 cards remaining will be deafeated.'   
        deck = Deck.new
        deck.dealer
        deck, deck1 = deck.deck_split
        player1 = create_player(1, deck.shuffle)
        player2 = create_player(2, deck1.shuffle)
    end

    def create_player(player_num, deck)
        p "Enter Player #{player_num}'s name: "
        #chomp removes \n at end of str. .strip removes whitespaces.
        name = gets.chomp.strip
        Player.new(name, deck)
    end
end