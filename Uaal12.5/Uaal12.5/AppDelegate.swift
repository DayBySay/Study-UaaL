//
//  AppDelegate.swift
//  Uaal12.5
//
//  Created by Takayuki Sei on 2021/04/06.
//

import UIKit
import UnityFramework

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        unityFrameworkLoad(launchOptions: launchOptions)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}

func unityFrameworkLoad(launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
    if let unity = unityFramework() {
        if unity.appController() == nil {
            var header = _mh_execute_header
            unity.setExecuteHeader(&header)
        }
        unity.setDataBundleId("com.unity3d.framework")
        unity.runEmbedded(withArgc: CommandLine.argc, argv: CommandLine.unsafeArgv, appLaunchOpts: launchOptions)
    }
}

func unityFramework() -> UnityFramework? {
    let path = "\(Bundle.main.bundlePath)/Frameworks/UnityFramework.framework"
    guard let bundle = Bundle(path: path) else { return nil }
    if !bundle.isLoaded {
        bundle.load()
    }
    return bundle.principalClass?.getInstance()
}
