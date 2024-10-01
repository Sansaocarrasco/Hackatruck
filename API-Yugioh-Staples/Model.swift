//
//  Model.swift
//  API-Yugioh-Staples
//
//  Created by Turma02-Backup on 30/09/24.
//


import Foundation

struct Card: Codable, Identifiable {
    let id: Int
    let name: String?
    let type: String?
    let humanReadableCardType: String?
    let frameType: String?
    let desc: String?
 //   let cardImages: [CardImage]
}

/*struct CardImage: Codable {
 let imageUrl: String
 
 enum CodingKeys: String, CodingKey {
 case imageUrl = "image_url"
 }
 }
 */
