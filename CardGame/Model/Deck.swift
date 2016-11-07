//
//  Deck.swift
//  CardGame
//
//  Created by Alabudi, Joseph on 10/31/16.
//  Copyright © 2016 Just A Prank. All rights reserved.
//

import Foundation

class Deck
{
    internal lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card!
    {
        if cards.count > 0
        {
            return cards.removeAtIndex(0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card!
    {
        return nil
    }
}