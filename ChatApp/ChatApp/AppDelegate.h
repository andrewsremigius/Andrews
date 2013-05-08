//
//  AppDelegate.h
//  ChatApp
//
//  Created by Mozzapp on 08/02/13.
//  Copyright (c) 2013 Mozzapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
