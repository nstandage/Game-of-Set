//
//  GameOfSet.swift
//  Game of Set
//
//  Created by Nathan on 7/14/20.
//  Copyright © 2020 Nathan. All rights reserved.
//

import Foundation



struct GameOfSet<Style> where Style: Styleable {
    var deckOfCards: [Card]
    var cardsOnBoard: [Card]
    
    
    
    var selectedCards: [Card] {
        var cards: [Card] = []
        for card in cardsOnBoard {
            card.isSelected ? cards.append(card) : nil
        }
        return cards
    }
    
    
    mutating func select(cardIndex: Int) {
        cardsOnBoard[cardIndex].isSelected = true
    }
    
    mutating func deselect(cardIndex: Int) {
        cardsOnBoard[cardIndex].isSelected = false
    }
    
    
    static func createDeck() -> [Card] {
        var deck: [Card] = []
        
        for shape in CardShape.allCases {
            for shade in CardShade.allCases {
                for color in CardColor.allCases {
                    for number in 1...3 {
                        deck.append(Card(cardStyle: CardStyle(color: color, shape: shape, shade: shade, number: number)))
                    }
                }
            }
        }
        return deck.shuffled()
    }
    
    
    
    struct Card {
        let cardStyle: Style
        var isSelected: Bool = false
        var isMatched: Bool = false
    }
    
    
    
}
