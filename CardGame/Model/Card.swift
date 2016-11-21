//
//  Card.swift
//  CardGame
//
//  Created by Alabudi, Joseph on 10/25/16.
//  Copyright © 2016 Just A Prank. All rights reserved.
//


class Card
{
    internal var isFaceUp : Bool
    
    init()
    {
        isFaceUp = false
    }
    
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func setFacing(isFaceUp : Bool)
    {
        self.isFaceUp = isFaceUp
    }
    
    func toString() -> String
    {
        let description = "This card is \(isFaceUp)"
        
        return description
    }
    
}
