//
//  AppDelegate.swift
//  GitAaaaaaaa
//
//  Created by unicred on 03/02/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
var window: UIWindow?



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        let navigationView =  UINavigationController(rootViewController: SearchViewController())
        navigationView.navigationBar.tintColor = .black
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.tintColor = .darkGray
        window?.backgroundColor = .systemGray6
        window?.rootViewController = navigationView
        return true
    }



}

