//
//  ViewController.swift
//  UrlSessionCombine
//
//  Created by Luis Fernando Sanchez Muñoz on 9/5/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("iniciado")
        let cancellable = FetchCharacters().execute().sink(receiveCompletion: { error in
            print("error: \(error)")
        }, receiveValue: { list in
            print("list: \(list)")
        })
       
        
    }


}

