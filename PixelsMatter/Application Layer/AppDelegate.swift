//
//  AppDelegate.swift
//  PixelsMatter
//
//  Created by Sem Vasiutin on 11.05.2020.
//  Copyright © 2020 nanosem. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    // MARK: - UIApplicationDelegate
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupWindow()
        return true
    }
}

// MARK: - Private functions
extension AppDelegate {
    private func setupWindow() {
        let window = UIWindow(frame: UIScreen.main.bounds)

        let controller = UIViewController.listViewController()
        let navigationViewController = UINavigationController(rootViewController: controller)
        window.rootViewController = navigationViewController

        self.window = window
        window.makeKeyAndVisible()
    }
}
