//
//  ViewController.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import UIKit
import Combine

class ViewController: UIViewController {

    var cancellable: AnyCancellable?
    
    @IBOutlet weak var imge: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        print("iniciado")
        cancellable = DownloadThumbnail().execute(path: "http://i.annihil.us/u/prod/marvel/i/mg/6/20/52602f21f29ec",exten: "jpg").sink(receiveCompletion: { error in
            print("completion: \(error)")
        }, receiveValue: { img in
            DispatchQueue.main.async {
                self.imge.image = img
            }
        })
       
        
    }


}

