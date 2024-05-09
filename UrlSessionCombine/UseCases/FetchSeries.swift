//
//  FetchSeries.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import Foundation
import Combine

class FetchSeries {
    
    func execute (_ characterID: Int) -> AnyPublisher<[Series], Error> {
        
        let urlRequest = URLRequest(components: URLComponents(path: "/characters/\(characterID)/series"))
        return URLSession.shared
            .fetch(for: urlRequest, with: ResponseSeries.self)
            .map { $0.data.results }
            .eraseToAnyPublisher()
    }
}
