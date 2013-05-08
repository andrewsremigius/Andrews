//
//  ViewController.h
//  ChatApp
//
//  Created by Mozzapp on 08/02/13.
//  Copyright (c) 2013 Mozzapp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "TableViewController.h"
@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *mobileNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *officeNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *objectId;

@property (weak, nonatomic) IBOutlet UILabel *notification;

@property (weak, nonatomic) IBOutlet UITextView *jsonTextView;
- (IBAction)getVoteQues:(id)sender;

- (IBAction)uploadVideo:(id)sender;
- (IBAction)getJsonFile:(id)sender;
@end
