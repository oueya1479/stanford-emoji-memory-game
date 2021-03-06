//
//  EmojiMemoryGame.swift
//  Emoji Memory Game
//
//  Created by κΉλν on 2022/06/18.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject{
    
    typealias Card = MemoryGame<String>.Card
    
    private static var emojis = ["πͺ","π","π","βΎοΈ","π","π","πΎ","π₯","π₯","π±","πͺ","π","π₯","π","π","πΈ","π","πͺ","π₯","β³οΈ","π£","πΉ","π","β½οΈ","π€Ώ","π₯","π₯","π½","βΈ","π·","πΌ","πΉ"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in EmojiMemoryGame.emojis[pairIndex] }
    }
    
    @Published private var model = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
