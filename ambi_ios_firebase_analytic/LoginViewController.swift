//
//  LandingViewController.swift
//  ambi_ios_firebase_analytic
//
//  Created by Paco on 14/11/2019.
//  Copyright © 2019 Paco. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    public var testVariable: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    public func setTestVariable(_ testVariable: String) {
        self.testVariable = testVariable
    }
    
}
