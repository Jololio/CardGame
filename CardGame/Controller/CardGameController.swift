//
//  CardGameController.swift
//  CardGame
//
//  Created by Alabudi, Joseph on 10/27/16.
//  Copyright © 2016 Just A Prank. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    //Declarations
    fileprivate lazy var clickCount = Int()
    fileprivate lazy var cardDeck = PlayingCardDeck()
    
    
   //UI Links
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
   
       
    //Creates a temporary card upon Loading
    override func viewDidLoad() -> Void
    {
        let tempCard = Card()
        print(tempCard.toString())
    }
    
    //Counts the number of button clicks
    //Grabs a random card and displays it's rank/suit/color etc.
    @IBAction func cardButton(_ sender: UIButton)
    {
        clickCount += 1
        
        let content = "You clicked \(clickCount) times"
     
        if let currentCard = cardDeck.drawCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", for: UIControlState())
        }
        else
        {
            cardButton.setTitle("deck over", for: UIControlState())
            cardDeck = PlayingCardDeck()
        }
        
        cardLabel.text = content
    }
}
