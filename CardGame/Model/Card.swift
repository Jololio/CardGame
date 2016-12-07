//
//  Card.swift
//  CardGame
//
//  Created by Alabudi, Joseph on 10/25/16.
//  Copyright © 2016 Just A Prank. All rights reserved.
//


class Card
{
    //Declarations
    internal var isFaceUp : Bool
    
    //Inits
    init()
    {
        isFaceUp = false
    }
    
    
    //Returns the card direction (up/down)
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func setFacing(_ isFaceUp : Bool)
    {
        self.isFaceUp = isFaceUp
    }
    
    func toString() -> String
    {
        let description = "This card is \(isFaceUp)"
        
        return description
    }
    
}
