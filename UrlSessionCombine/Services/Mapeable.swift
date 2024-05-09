//
//  Mapeable.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import Foundation

protocol Mapeable {
    func map(transform: (inout Self) -> Void) -> Self
}

extension Mapeable {
    func map(transform: (inout Self) -> Void) -> Self {
        var request = self
        transform(&request)
        return request
    }
}
