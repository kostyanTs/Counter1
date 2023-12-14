//
//  ViewController.swift
//  Counter1
//
//  Created by Konstantin on 14.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeCountButton: UIButton!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    var counter: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        changeCountButton.backgroundColor = .gray
        changeCountButton.frame.size.width = 200
        changeCountButton.frame.size.height = 200
        changeCountButton.layer.cornerRadius = 100
        changeCountButton.layer.masksToBounds = false
    }

    @IBAction func buttonTouchDown(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
    }
    
}

