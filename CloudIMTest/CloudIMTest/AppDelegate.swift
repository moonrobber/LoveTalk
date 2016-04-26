//
//  AppDelegate.swift
//  CloudIMTest
//
//  Created by 陈巳伟 on 16/4/26.
//  Copyright © 2016年 Chen-sw. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //获取保存的Token
        //let tokenCache = NSUserDefaults.standardUserDefaults().objectForKey("kDeviceToken") as? String
        
        //初始化appKey
        RCIM.sharedRCIM().initWithAppKey("3argexb6rzwoe")
        
        //用Token测试连接
        RCIM.sharedRCIM().connectWithToken("yR1aioWMJQTjBC6P7E/D+Q7vdjLwakjTPiSrqHAV18Kqg8Q08MAO7b/wi+uCFQmGEaLaDFEOkOYKoQP/oeSh0pEfbT/aq16X", success: { (_) in
            print("连接成功!")
            
//            let currentUser = RCUserInfo(userId: "moonrobber", name: "月亮", portrait: "http%3A%2F%2Fc.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2F1b4c510fd9f9d72a3a15ca8cd22a2834349bbb2a.jpg")
//            
//            RCIMClient.sharedRCIMClient().currentUserInfo = currentUser
            
            }, error: { (_) in
                print("连接失败!")
            }) { 
                print("Token不正确，或已经失效！")
        }
        
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

