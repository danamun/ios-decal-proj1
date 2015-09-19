//
//  AppDelegate.swift
//  TODO
//
//  Created by Da Y Mun on 9/16/15.
//  Copyright © 2015 danamun. All rights reserved.
//

import UIKit
//GLOBAL Major colors
let DARKESTGRAY: UIColor = UIColor(red: 82/255, green: 82/255, blue: 82/255, alpha: 1)
let MIDGRAY: UIColor = UIColor(red:144/255, green:144/255, blue:144/255, alpha:1)
let LIGHTERGRAY: UIColor = UIColor(red:240/255, green:240/255, blue:240/255, alpha:1)
let DARKERBLUE: UIColor = UIColor(red: 95/255, green: 189/255, blue: 209/255, alpha: 1)
let LIGHTERBLUE: UIColor = UIColor(red:106/255, green:214/255, blue:236/255, alpha:1)
let DARKERORANGE: UIColor = UIColor(red:255/255, green:152/255, blue:40/255, alpha:1)
let LIGHTERORANGE: UIColor = UIColor(red:251/255, green:175/255, blue:93/255, alpha:1)
let BUTTONBORDER: CGFloat = 1

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        customizeUI()
        
        return true
    }
    
    //App-wide UI customization (i.e. Navigation bar color, button color, etc
    func customizeUI(){
        //Navigation title font
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:DARKESTGRAY]
        
        //Navigation item font
        UINavigationBar.appearance().tintColor = DARKERBLUE
        
        //Navigation bar White
        UINavigationBar.appearance().barTintColor = UIColor.whiteColor()
        
        //Text
        UILabel.appearance().textColor = DARKESTGRAY
        
        //Buttons
        UIButton.appearance().tintColor = DARKERBLUE
        UIButton.appearance().backgroundColor = UIColor.clearColor()
        UIButton.appearance().layer.borderColor = DARKERBLUE.CGColor
        UIButton.appearance().layer.borderWidth = BUTTONBORDER
        
        //Tab
        
        //UI
        UITabBar.appearance().tintColor = DARKERORANGE;
        UITabBar.appearance().backgroundColor = UIColor.whiteColor()
        UITabBar.appearance().barTintColor = UIColor.whiteColor()
        
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

