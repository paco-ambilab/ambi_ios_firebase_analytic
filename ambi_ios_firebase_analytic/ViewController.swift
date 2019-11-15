//
//  ViewController.swift
//  ambi_ios_firebase_analytic
//
//  Created by Paco on 14/11/2019.
//  Copyright © 2019 Paco. All rights reserved.
//

import UIKit
import PhraseApp

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let textLabel = UILabel(frame: .zero)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(textLabel)
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        textLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        DispatchQueue.main.asyncAfter(deadline: .now()+5) {
            textLabel.text = PhraseApp.shared.localizedString(forKey: "_string_login_page_title", value: "", table: nil)
            print(PhraseApp.shared.localizedString(forKey: "_string_login_page_title", value: "", table: nil))
        }
         
    }

}

