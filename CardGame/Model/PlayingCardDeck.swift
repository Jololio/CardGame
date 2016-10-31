//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Alabudi, Joseph on 10/31/16.
//  Copyright © 2016 Just A Prank. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
{
    internal lazy var cards = [PlayingCard]()
    
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank <= PlayingCard.maxRank(); rank += 1
            {
                //let tempCard = PlayingCard()
                //tempCard.rank = rank
                //tempCard.suit = suit
                let tempCard = PlayingCard(withRank: rank, ofSuit: suit)
                cards.append(tempCard)
            }
        }
    }
    
    func shuffleDeck() -> Void
    {
        
    }
    
    func orderDeck() -> Void
    {
        
    }
}
