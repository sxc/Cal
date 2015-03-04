//
//  ViewController.swift
//  Cal
//
//  Created by Shen Xiaochun on 15/3/4.
//  Copyright (c) 2015年 Sigutian Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTheTypingANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTheTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTheTypingANumber = true
        }
        
    }

}

