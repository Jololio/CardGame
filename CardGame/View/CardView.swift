//
//  CardView.swift
//  CardGame
//
//  Created by Alabudi, Joseph on 11/21/16.
//  Copyright © 2016 Just A Prank. All rights reserved.
//

import UIKit

class CardView
{
    internal var frontImage : UIImageView
    internal var backImage : UIImageView
    internal var isFaceUp : Bool
    internal var bottomLabel : UILabel
    internal var topLabel : UILabel
    
    
    init()
    {
        frontImage = UIImageView()
        backImage = UIImageView()
        isFaceUp = Bool()
        bottomLabel = UILabel()
        topLabel = UILabel()
    }
    
    
}
