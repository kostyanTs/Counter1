//
//  ViewController.swift
//  Counter1
//
//  Created by Konstantin on 14.12.2023.
//

import UIKit


class ViewController: UIViewController {
    
    //Mark: -IBOutlets
    
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var plusCounterButton: UIButton!
    @IBOutlet private weak var minusCounterButton: UIButton!
    @IBOutlet private weak var zeroButton: UIButton!
    @IBOutlet private weak var historyOfChangesLabel: UILabel!
    @IBOutlet private weak var historyTextView: UITextView!
    
    //Mark: -Properties
    
    private var counter: Int = 0
    private var history: String = ""
    private let dateFormatter = DateFormatter()
    
    private func forDidLoad(){
        plusCounterButton.tintColor = .red
        historyOfChangesLabel.text = "История изменений:"
        historyTextView.text = ""
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        forDidLoad()
    }
    
    //Mark: -IBActions
    
    @IBAction private func plusTouchUp(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        historyTextView.text += "[\(dateFormatter.string(from: Date()))]: значение изменено на +1\n"
        historyTextView.scrollTextViewBottom()
    }
    
    @IBAction private func minusTouchUp(_ sender: Any) {
        guard counter > 0 else {
            counter = 0
            historyTextView.text += "[\(dateFormatter.string(from: Date()))]: попытка уменьшить значение счётчика ниже 0\n"
            historyTextView.scrollTextViewBottom()
            return
        }
        counter -= 1
        counterLabel.text = "\(counter)"
        historyTextView.text += "[\(dateFormatter.string(from: Date()))]: значение изменено на -1\n"
        historyTextView.scrollTextViewBottom()
    }
    
    @IBAction private func zeroTouchUp(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
        historyTextView.text += "[\(dateFormatter.string(from: Date()))]: значение изменено на 0\n"
        historyTextView.scrollTextViewBottom()
    }
}

