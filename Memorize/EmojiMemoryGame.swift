//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Georgi Markov on 9/24/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis: Array<String> = ["✈️", "🚊", "🚀", "⛴", "🚗", "🚜", "🚌", "🏍", "🛺", "🛴", "🚲", "🚇", "🚒", "🚎", "🚁", "🚡", "🚆", "🚓", "🏎", "🚠", "🚅", "🚤", "🛞", "🛤"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsOfCards: 10) {pairIndex in
            return EmojiMemoryGame.emojis[pairIndex]
        }
    }
       
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }
}
