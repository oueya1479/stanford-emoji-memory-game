//
//  Emoji_Memory_GameApp.swift
//  Emoji Memory Game
//
//  Created by κΉλν on 2022/06/18.
//

import SwiftUI

@main
struct Emoji_Memory_GameApp: App {
    private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
