//
//  AppDelegate.swift
//  SILKLearning
//
//  Created by 张骞 on 2023/4/23.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // 创建window
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window?.rootViewController = UINavigationController(rootViewController: MainTabBarController())
        self.window?.makeKeyAndVisible()
        
        return true
    }
}
