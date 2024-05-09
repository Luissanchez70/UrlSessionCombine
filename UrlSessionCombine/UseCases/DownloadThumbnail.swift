//
//  DownloadThumbnail.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import Foundation
import UIKit
import Combine

class DownloadThumbnail {
    
    func execute(path: String, exten: String) -> AnyPublisher<UIImage, Error> {
        let split = path.split(separator: "mg")
        let url = URLRequest(components: URLComponents(path: String(split[1]), exten: exten))
        return URLSession.shared.fetch(for: url)
            .map { data in
                return UIImage(data: data)!
            }.eraseToAnyPublisher()
    }
}
// schema    host        -----------------  path -------------------------------
// https: i.annihil.us  /u/prod/marvel/i/mg    /b/40/image_not_available    .jpg
// http:  i.annihil.us  /u/prod/marvel/i/mg    /6/20/52602f21f29ec          .jpg
// http:  i.annihil.us  /u/prod/marvel/i/mg    /5/e0/4c0035c9c425d          .gif
// http:  i.annihil.us  /u/prod/marvel/i/mg    /b/40/image_not_available    .jpg
//                                        > separador
