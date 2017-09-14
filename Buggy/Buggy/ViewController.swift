//
//  ViewController.swift
//  Buggy
//
//  Created by Robert Steiner on 9/12/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton){
        print("Called buttonTapped(_:)")
        
        print("Method: \(#function) in file: \(#file) line: \(#line) called.")
        
        badMethod()
    }
    
    func badMethod(){
            let array = NSMutableArray()
        
        for i in 0..<10{
            array.insert(i, at: i)
        }
        
        for _ in 0...10 {
            array.removeObject(at: 0)
        }
        
    }


}

