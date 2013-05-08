//
//  DummyViewController.m
//  ChatApp
//
//  Created by Mozzapp on 18/03/13.
//  Copyright (c) 2013 Mozzapp. All rights reserved.
//

#import "DummyViewController.h"
#import "TableViewController.h"
@interface DummyViewController ()

@end

@implementation DummyViewController
@synthesize file;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    TableViewController *dummy = [[TableViewController alloc]init];
    [self.view addSubview:dummy.view];
//    [self addChildViewController:dummy];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    //[self.tableView setFrame:CGRectMake(0.0, 100.0, 320.0, 300.0)];
    //    [self.view addSubview:self.tableView];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
