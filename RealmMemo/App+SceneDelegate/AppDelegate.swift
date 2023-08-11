//
//  AppDelegate.swift
//  RealmMemo
//
//  Created by 김기현 on 2023/08/02.
//

import UIKit



@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var hasAlreadyLaunched: Bool!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        hasAlreadyLaunched = UserDefaults.standard.bool(forKey: "hasAlreadyLaunched")

        hasAlreadyLaunched ? hasAlreadyLaunched = true : UserDefaults.standard.set(true, forKey: "hasAlreadyLaunched")
        
        return true
    }
    
    func sethasAlreadyLaunched() {
        hasAlreadyLaunched = true
    }
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

    }
}
