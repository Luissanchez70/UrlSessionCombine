//
//  URLSession+init.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import Foundation
import Combine

public extension URLSession {
    
    func fetch<Response: Decodable> (for request: URLRequest, with type: Response.Type) -> AnyPublisher<Response, Error>
    {
        print("fetch")
        return self.dataTaskPublisher(for: request)
            .tryMap (processResponse)
            .decode(type: Response.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}

private extension URLSession {
    
    func processResponse(data: Data, response: URLResponse) throws -> Data {
        print("processResponse")
        guard let response = response as? HTTPURLResponse else { throw URLError(.unknown) }
        switch response.statusCode {
        case 400...499:
            print("un 400")
            throw URLError(.badURL)
        case 500...599:
            print("un 500")
            throw URLError(.badServerResponse)
        default:
            print("datos")
            return data
        }
    }
}
