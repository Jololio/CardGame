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
    //Declarations
    internal var suit : String
    internal var color : UIColor
    internal var rank : Int
    override init()
    {
        rank = 0
        suit = String()
        color = UIColor.red
        super.init()
    }
    
    //Inits
    init(withRank: Int, ofSuit:String)
    {
        color = UIColor.red
        suit = ofSuit
        rank = withRank
        super.init()
    }
    
    //Gets card color
    func getColor() -> UIColor
    {
        return color
    }
    
    //Gets card rank
    func getRank() -> Int
    {
        return rank
    }
   
    //Gets card suit
    func getSuit() -> String
    {
        return suit
    }
    
    //Returns the rank and suit of the card
    func getCardData() -> String
    {
        return "\(PlayingCard.validRanks()[rank]) \(suit)"
    }
    
    
   
    //Returns if the card is facing up or down
    override func toString() -> String
    {
        let backStatus : String
        if self.isFacing()
        {
           backStatus = " is face up"
        }
        else
        {
            backStatus = " is face down"
        }
        
        
        
        
        //Description of card rank/suit/color and if it is facing up/down
        let description = "The card rank is: \(rank) and its suit is \(suit). It has a color of \(color) and \(backStatus)."
        
        return description
    }
    
    //The class modifier makes it so the method is visible without an instance
    //You would call it by ClassName.method()
    //In this case PlayingCard.validRanks()
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♠️","♣️","♥️","♦️"]
    }
}

