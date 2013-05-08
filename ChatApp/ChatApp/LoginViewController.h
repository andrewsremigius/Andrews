//
//  LoginViewController.h
//  ChatApp
//
//  Created by Mozzapp on 08/02/13.
//  Copyright (c) 2013 Mozzapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@interface LoginViewController : PFQueryTableViewController
{
}
@property (weak, nonatomic) IBOutlet UITextField *Text;
@end
