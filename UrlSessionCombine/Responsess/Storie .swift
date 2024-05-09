//
//  Storie .swift
//  Marvel Encyclopedia
//
//  Created by Diogo Filipe Abreu Rodrigues on 22/04/2024.
//

import Foundation

struct Storie: Decodable {
    var id: Int?
    var title: String?
    var description: String?
}

struct StorieData: Decodable {
    let results: [Storie]
    let offset: Int
    let limit: Int
    let total: Int
    let count: Int
}

struct ResponseStorie: Decodable {
    let data: StorieData
}
