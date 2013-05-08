//
//  AppDelegate.m
//  ChatApp
//
//  Created by Mozzapp on 08/02/13.
//  Copyright (c) 2013 Mozzapp. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "TableViewController.h"
#import "TViewController.h"
#import "DummyViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    //TestApp
    //[Parse setApplicationId:@"Ig9Yudzyu8NceMj70oWpRaZld5biXL53h80Pa27Q" clientKey:@"VfbUocv0w7s3gcYGXKfjFSxdaulbJg2da89vKbtb"];
    
    //ChatApp
    [Parse setApplicationId:@"Y0l6mKRzWz89Yd4fEDG54HSZVrxwgd16MMU79iUw" clientKey:@"Co6oBJdgBtXlSxavIPqx320riux5aVs0mgWRgeMn"];
    
    //TListParse
    //[Parse setApplicationId:@"2A4NbbGnIaid7NpY8W8XHFJS2CumIbV5FcYQEJ7F" clientKey:@"3N29DoPiQDyn9mVylBYFVpodhzQnFn4shKVT7jL3"];
    
    [application registerForRemoteNotificationTypes:
     UIRemoteNotificationTypeBadge |
     UIRemoteNotificationTypeAlert |
     UIRemoteNotificationTypeSound];
    TableViewController *controller = [[TableViewController alloc]init];
//    TViewController *controller = [[TViewController alloc]init];
//    DummyViewController *dc = [[DummyViewController alloc]init];
    
    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
//    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:self.viewController];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}
- (void)application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)newDeviceToken
{
//    [PFPush storeDeviceToken:newDeviceToken]; // Send parse the device token
//    [PFPush subscribeToChannelInBackground:@""];// Subscribe this user to the broadcast channel, ""
    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
    [currentInstallation setDeviceTokenFromData:newDeviceToken];
    [currentInstallation saveInBackground];
    
}
//
//
- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary *)userInfo {

    [PFPush handlePush:userInfo];
    NSDictionary *receiveNotification = [userInfo objectForKey:@"aps"];
    self.viewController.notification.text = [NSString stringWithFormat:@"%@", [receiveNotification objectForKey:@"alert"]];

}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
//    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
//    if (currentInstallation.badge != 0) {
//        currentInstallation.badge = 0;
//        [currentInstallation saveEventually];
//    }
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
