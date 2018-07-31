//
//  ViewController.swift
//  NumiOSDemo
//
//  Created by Seungyoun Yi on 2018. 7. 31..
//  Copyright © 2018년 Seungyoun Yi. All rights reserved.
//

import UIKit
import NumiOS

class ViewController: UIViewController {
    @IBOutlet weak var printTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = [[0.0,1.0],[2.0,3.0]]
        print(NumiOS.shared.shape(array))
        
        printTextView.text =
        """
        input array: \(array)
        NumiOS.shared.shape(array): \(NumiOS.shared.shape(array))
        """
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

