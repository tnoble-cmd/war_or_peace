require 'rspec'
require './lib/deck'
require './lib/card'

RSpec.describe Deck do
    it "exists" do
        deck = Deck.new(['cards'])

        expect(deck).to be_an_instance_of(Deck)
    end
    
    it "takes cards" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, 'King', 13)
        card3 = Card.new(:diamond, '3', 3)

        deck = Deck.new([card1, card2, card3])
    end

    it "returns index with rank_of_card_at" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, 'King', 13)
        card3 = Card.new(:diamond, '3', 3)

        deck = Deck.new([card1, card2, card3])
        expect(deck.rank_of_cards_at(0)).to eq(12)
    end

    








end