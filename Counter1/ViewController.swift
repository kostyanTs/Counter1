//
//  ViewController.swift
//  Counter1
//
//  Created by Konstantin on 14.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var plusCounterButton: UIButton!
    
    @IBOutlet weak var minusCounterButton: UIButton!
    
    @IBOutlet weak var zeroButton: UIButton!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        plusCounterButton.tintColor = .red
    }
    
    @IBAction func plusTouchUp(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
    }
    
    @IBAction func minusTouchUp(_ sender: Any) {
        counter -= 1
        if counter < 0 {
            counter = 0
        }
        counterLabel.text = "\(counter)"
    }
    @IBAction func zeroTouchUp(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
    }
}

