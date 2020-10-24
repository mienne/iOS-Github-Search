//
//  AppDelegate.swift
//  GithubUserSearch
//
//  Created by hyeonjeong on 2020/05/30.
//  Copyright © 2020 hyeonjeong. All rights reserved.
//

import UIKit
import RIBs

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private var launchRouter: LaunchRouting?
    private var urlHandler: URLHandler?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window

        let rootBuilder = RootBuilder(dependency: AppComponent()).build()
        let launchRouter = rootBuilder.launchRouter
        self.launchRouter = launchRouter
        urlHandler = rootBuilder.urlHandler
        launchRouter.launch(from: window)
        return true
    }
}
