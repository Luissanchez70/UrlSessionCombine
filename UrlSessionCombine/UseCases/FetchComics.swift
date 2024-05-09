//
//  FetchResource.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import Foundation
import Combine

class FetchComics {
    
    func execute (_ characterID: Int) -> AnyPublisher<[Comic], Error> {
        
        let urlRequest = URLRequest(components: URLComponents(path: "/characters/\(characterID)/comics"))
        return URLSession.shared
            .fetch(for: urlRequest, with: ResponseComic.self)
            .map { $0.data.results }
            .eraseToAnyPublisher()
    }
}
