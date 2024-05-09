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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("iniciado")
        cancellable = FetchSeries().execute(1011334).sink(receiveCompletion: { error in
            print("completion: \(error)")
        }, receiveValue: { list in
            print("list: \(list)")
        })
       
        
    }


}

