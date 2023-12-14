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
    
    @IBOutlet weak var historyOfChangesLabel: UILabel!
    
    @IBOutlet weak var historyTextView: UITextView!
    
    private var counter: Int = 0
    private var history: String = ""
    private let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        plusCounterButton.tintColor = .red
        historyOfChangesLabel.text = "История изменений:"
        historyTextView.text = ""
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
    }
    
    @IBAction func plusTouchUp(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        historyTextView.text += "[\(dateFormatter.string(from: Date()))]: значение изменено на +1\n"
    }
    
    @IBAction func minusTouchUp(_ sender: Any) {
        counter -= 1
        if counter < 0 {
            counter = 0
        }
        counterLabel.text = "\(counter)"
        historyTextView.text += "[\(dateFormatter.string(from: Date()))]: значение изменено на -1\n"
    }
    @IBAction func zeroTouchUp(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
        historyTextView.text += "[\(dateFormatter.string(from: Date()))]: попытка уменьшить значение счётчика ниже 0\n"
    }
}

