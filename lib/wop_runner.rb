require './lib/card'
require './lib/deck'
require'./lib/player'
require './lib/game'
require 'pry'

class Start
    
    def initialize
        p 'Welcome to War! (or Peace) This game will be played with 52 cards.'
        p 'The player with 0 cards remaining will be deafeated.'
        deck = Deck.new
        deck.dealer
        deck.shuffle
        deck, deck1 = deck.deck_split
        player1 = create_player(1, deck)
        player2 = create_player(2, deck1)
        start_game
    end

    def create_player(player_num, deck)
        p "Enter Player #{player_num}'s name: "
        #chomp removes \n at end of str. .strip removes whitespaces.
        name = gets.chomp.strip
        Player.new(name, deck)
    end
    def start_game
        loop do
            p 'Type GO to start the game!'
            input = gets.chomp.strip.upercase
            break if input == 'GO'
            
        end
    end





end