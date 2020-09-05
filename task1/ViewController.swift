//
//  ViewController.swift
//  task1
//
//  Created by Alexander Kononok on 9/3/20.
//  Copyright © 2020 Alexander Kononok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    typealias arrayOfTuples = [(Int, String)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let arrOfTuples: arrayOfTuples = [(1, "x"), (4, "y"), (6, "a")]
        
        print(getReult(arr: arrOfTuples))
    }
    
    func getReult(arr: arrayOfTuples) -> arrayOfTuples {
     
        return arr.map({ ($0.0 * $0.0, $0.1) }).filter({ $0.0 % 2 == 0 }).sorted(by: { $0.1 < $1.1 })
    }
     

}

