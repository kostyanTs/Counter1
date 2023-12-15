//
//  UITextView + Extension.swift
//  Counter1
//
//  Created by Konstantin on 16.12.2023.
//

import UIKit


extension UITextView {
    func scrollTextViewBottom() {
        if self.text.count > 0 {
            let location = self.text.count - 1
            let bottom = NSMakeRange(location, 1)
            self.scrollRangeToVisible(bottom)
        }
    }
}
