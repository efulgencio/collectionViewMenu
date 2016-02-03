//
//  AppDelegate.swift
//  Test
//
//  Created by eduardo fulgencio on 2/2/16.
//  Copyright © 2016 eduardo fulgencio. All rights reserved.
//

import UIKit

let themeColor = UIColor(red: 0.01, green: 0.41, blue: 0.22, alpha: 1.0)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
         window?.tintColor = themeColor
        
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

/*
You’re by no means limited to stacks and grids, because collection views are extremely customizable. You can use them to make circle layouts, cover-flow style layouts, Pulse news style layouts – almost anything you can dream up!



UICollectionView – the main view in which the content is displayed, similar to a UITableView. Like a table view, a collection view is a UIScrollView subclass.

UICollectionViewCell – similar to a UITableViewCell in a table view. These cells make up the content of the view and are added as subviews to the colleciton view. Cells can be created programmatically or inside Interface Builder.

Supplementary Views – if you have extra information you need to display that shouldn’t be in the cells but still somewhere within the collection view, you should use supplementary views. These are commonly used for headers or footers.

In addition to the above visual components, a collection view has a layout object which is responsible for the size, position and several other attributes of the content. Layout objects are subclasses of UICollectionViewLayout. Layouts can be swapped out during runtime and the collection view can even automatically animate switching from one layout to another!



*/

