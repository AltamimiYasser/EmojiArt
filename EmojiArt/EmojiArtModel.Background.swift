//
//  EmojiArtModel.Background.swift
//  EmojiArt
//
//  Created by Yasser Tamimi on 03/12/2021.
//

import Foundation

extension EmojiArtModel {
    enum Background {
        case blanc
        case url(URL)
        case imageData(Data)
        
        var url: URL? {
            switch self {
            case .url(let url): return url
            default: return nil
            }
        }
        
        var imageData: Data? {
            switch self {
            case .imageData(let data): return data
            default: return nil
            }
        }
    }
}
