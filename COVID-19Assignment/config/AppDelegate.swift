//
//  AppDelegate.swift
//  COVID-19Assignment
//
//  Created by khalil on 21/1/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var coordinator: MainCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setUpNetworkManagerReachability()
        initCoordinator()
       
        return true
    }
    
    private func setUpNetworkManagerReachability() {
        _ = NetworkManagerReachability.sharedInstance
    }
    func initCoordinator() {

        let navController = UINavigationController()
        // send that into our coordinator so that it can display view controllers
        coordinator = MainCoordinator(navigationController: navController)
        // tell the coordinator to take over control
        coordinator?.start()
        // create a basic UIWindow and activate it
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }

 
}

