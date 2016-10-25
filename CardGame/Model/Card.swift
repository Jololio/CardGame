//
//  Card.swift
//  CardGame
//
//  Created by Alabudi, Joseph on 10/25/16.
//  Copyright © 2016 Just A Prank. All rights reserved.
//

import UIKit

class Card
{
    private var backImage : UIImage
    private var isFaceUp : Bool
    
    init()
    {
        backImage = UIImage()
        isFaceUp = false
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func toString() -> String
    {
        let description = "This card is \(isFaceUp)"
        
        return description
    }
    
}
