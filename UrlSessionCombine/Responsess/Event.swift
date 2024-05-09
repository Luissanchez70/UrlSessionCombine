//
//  Event.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import Foundation

struct Event: Decodable {
    var id: Int?
    var title: String?
    var description: String?
}

struct EventData: Decodable {
    let results: [Event]
    let offset: Int
    let limit: Int
    let total: Int
    let count: Int
}

struct ResponseEvent: Decodable {

    let data: EventData
}
