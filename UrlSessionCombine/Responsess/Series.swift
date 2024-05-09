//
//  Serie.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import Foundation

struct Series: Decodable {
    var id: Int?
    var title: String?
    var description: String?
}

struct SeriesData: Decodable {
    let results: [Series]
    let offset: Int
    let limit: Int
    let total: Int
    let count: Int
}

struct ResponseSeries: Decodable {
    let data: SeriesData
}
