//
//  PlayingCard.swift
//  CardGame
//
//  Created by Al-Abudi, Joseph on 10/25/16.
//  Copyright © 2016 Just A Prank. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    private var rank : Int
    private var suit : String
    private var color : UIColor
    
    override init()
    {
        rank = 0
        suit = ""
        color = UIColor()
        super.init()
    }
    
    func getColor() -> UIColor
    {
        return color
    }
    
    func getRank() -> Int
    {
        return rank
    }
   
    func getSuit() -> String
    {
        return suit
    }
    
    
    
    override func toString() -> String
    {
        let description = "The card rank is: \(rank) and itsui is \(suit) It has a color of \(color)"
        
        return description
    }
    
    
}

