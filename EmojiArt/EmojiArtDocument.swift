//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by Yasser Tamimi on 03/12/2021.
//

import SwiftUI

class EmojiArtDocument: ObservableObject {
    @Published private(set) var emojiArt: EmojiArtModel

    init() {
        emojiArt = EmojiArtModel()
        emojiArt.addEmoji("🚚", at: (-200, -100), size: 80)
        emojiArt.addEmoji("😅", at: (50, 100), size: 40)
    }

    var emojis: [EmojiArtModel.Emoji] { emojiArt.emojis }
    var background: EmojiArtModel.Background { emojiArt.background }

    // MARK: - Intent(s)

    func setBackground(_ background: EmojiArtModel.Background) {
        emojiArt.background = background
    }

    func addEmoji(_ emoji: String, at location: (x: Int, y: Int), size: Int) {
        emojiArt.addEmoji(emoji, at: location, size: size)
    }

    func moveEmoji(_ emoji: EmojiArtModel.Emoji, by offset: CGSize) {
        if let index = emojiArt.emojis.index(matching: emoji) {
            emojiArt.emojis[index].x += Int(offset.width)
            emojiArt.emojis[index].y += Int(offset.height)
        }
    }

    func scaleEmoji(_ emoji: EmojiArtModel.Emoji, by scale: CGFloat) {
        if let index = emojiArt.emojis.index(matching: emoji) {
            emojiArt.emojis[index].size =
                Int((CGFloat(emojiArt.emojis[index].size) * scale).rounded(.toNearestOrAwayFromZero))
        }
    }
}
