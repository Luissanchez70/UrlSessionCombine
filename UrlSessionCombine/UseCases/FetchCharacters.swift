//
//  FetchCharacters.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import Foundation
import Combine

class FetchCharacters {
    
    func execute() -> AnyPublisher<[Character], Error> {
        
        let urlRequest = URLRequest(components: URLComponents(path: "/characters"))
        print(urlRequest.url ?? "Sin url")
        return URLSession.shared
            .fetch(for: urlRequest, with: ResponseCharacter.self)
            .map { $0.data.results }
            .eraseToAnyPublisher()
    }
}
