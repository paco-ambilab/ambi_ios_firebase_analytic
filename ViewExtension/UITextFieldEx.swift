//
//  File.swift
//  SDKExample
//
//  Created by Paco on 5/11/2019.
//  Copyright © 2019 Paco. All rights reserved.
//

import Foundation
import UIKit

class UITextFieldEx: UITextField, UITextFieldDelegate {

    
    var textDidChangeListener: ((_ textInput: UITextField?) -> Void)?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    
    private func commonInit() {
        delegate = self
    }
    
    // MARK: - UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        endEditing(true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textDidChangeListener?(textField)
    }
    
}
