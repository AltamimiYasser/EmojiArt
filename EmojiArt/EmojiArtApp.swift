//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Yasser Tamimi on 03/12/2021.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let document = EmojiArtDocument()
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
