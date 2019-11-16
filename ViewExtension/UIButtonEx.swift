//
//  UIButtonEx.swift
//  SDKExample
//
//  Created by Paco on 5/11/2019.
//  Copyright © 2019 Paco. All rights reserved.
//

import Foundation
import UIKit

class UIButtonEx: UIButton {
    
    var didTapButtonListener: ((_ sender: Any) -> Void)?
    
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
        addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    }
    
    @objc func didTapButton(_ sender: Any) {
        didTapButtonListener?(sender)
    }
    
}
