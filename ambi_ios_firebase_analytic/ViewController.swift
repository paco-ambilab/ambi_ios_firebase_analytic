//
//  ViewController.swift
//  ambi_ios_firebase_analytic
//
//  Created by Paco on 14/11/2019.
//  Copyright © 2019 Paco. All rights reserved.
//

import UIKit
import PhraseApp
import Firebase

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
         
        let loginButton = UIButtonEx(frame: .zero)
        
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.layer.borderWidth = 1
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        loginButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        
        loginButton.setTitle("login", for: .normal)
        loginButton.didTapButtonListener = { (sender) in
            Analytics.logEvent("StartLoginViewController", parameters: nil)
            self.navigationController?.pushViewController(LoginViewController(), animated: true)
        }
        
        let userDashboardButton = UIButtonEx(frame: .zero)
        
        userDashboardButton.setTitleColor(.black, for: .normal)
        userDashboardButton.layer.borderWidth = 1
        userDashboardButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userDashboardButton)
        userDashboardButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        userDashboardButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        userDashboardButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        userDashboardButton.setTitle("user_dashboard", for: .normal)
        userDashboardButton.didTapButtonListener = { (sender) in
            Analytics.logEvent("StartUserDashboardViewController", parameters: nil)
            self.navigationController?.pushViewController(UserDashboardViewController(), animated: true)
        }
    }

}

