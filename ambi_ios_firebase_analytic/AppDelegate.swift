//
//  AppDelegate.swift
//  ambi_ios_firebase_analytic
//
//  Created by Paco on 14/11/2019.
//  Copyright © 2019 Paco. All rights reserved.
//

import UIKit
import PhraseApp

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        PhraseApp.shared.setup(distributionID: "96caf4d1da04e4d33a5a773319a0a452", environmentToken: "liILL1ADJJS6i9NU4wpJIK5I9BxdNlce2g0ktM84HZ4")
        try! PhraseApp.shared.updateTranslations()
        return true
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

