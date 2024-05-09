//
//  Comic.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import Foundation

struct Comic: Decodable {
    var id: Int?
    var title: String?
    var description: String?
}

struct ComicData: Decodable {
    let results: [Comic]
    let offset: Int
    let limit: Int
    let total: Int
    let count: Int
}

struct ResponseComic: Decodable {
    let data: ComicData
}
