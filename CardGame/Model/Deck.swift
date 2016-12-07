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
        //Create a temp variable to hold Cards
        var tempDeck = [Card]()
        
        //Repeat until cards data member is empty.
        while self.cards.count > 0
        {
            //Get a random number between 0...cards.count-1
            let randomIndex = Int (arc4random() % (UInt32)(cards.count))
            
            //Remove the cards at that index from the deck.
            let removedCard = cards.remove(at: randomIndex)
            
            //Place that card in the temporary array
            tempDeck.append(removedCard)
        }
        //Replace the data member with the updated data
        self.cards = tempDeck
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    //Draws a new card
    func drawCard() -> Card?
    {
        if cards.count > 0
        {
            return cards.remove(at: 0)
        }
        else
        {
            return nil
        }
    }
    
    //Draws a random new card
    func drawRandomCard() -> Card?
    {
        if cards.count > 0
        {
            let randomIndex = Int (arc4random() % (UInt32)(cards.count))
            return cards.remove(at: randomIndex)
        }
        else
        {
            return nil
        }
    }
}
