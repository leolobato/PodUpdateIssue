//
//  AppDelegate.m
//  PodUpdateIssue
//
//  Created by Leonardo Lobato on 02/10/14.
//  Copyright (c) 2014 Cliq Consulting. All rights reserved.
//

#import "AppDelegate.h"
#import "DetailViewController.h"

#import <Facebook-iOS-SDK/FacebookSDK/Facebook.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
{

    [FBSettings setDefaultAppID:@"test"];
    
#if CLIQ_DEBUG
    NSLog(@"Configuration: Debug");
#elif CLIQ_ADHOC
    NSLog(@"Configuration: AdHoc");
#elif CLIQ_APPSTORE
    NSLog(@"Configuration: AppStore");
#endif

#if CLIQ_DEVELOPMENT
    NSLog(@"Environment: Development");
#elif CLIQ_STAGING
    NSLog(@"Environment: Staging");
#elif CLIQ_PRODUCTION
    NSLog(@"Environment: Production");
#endif

    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
