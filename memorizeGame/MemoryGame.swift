//
//  MemoryGame.swift
//  memorizeGame
//
//  Created by Macintosh on 1/12/2565 BE.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose (_ card: Card){
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
