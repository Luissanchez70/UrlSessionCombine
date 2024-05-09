//
//  Character.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import Foundation

struct Character: Decodable {
    let name: String
}

struct ResponseCharacter: Decodable {
    let data: CharacterData
}

struct CharacterData: Decodable {
    let results: [Character]
}
