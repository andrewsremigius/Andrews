//
//  SimpleTableCell.h
//  ChatApp
//
//  Created by Mozzapp on 10/04/13.
//  Copyright (c) 2013 Mozzapp. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface SimpleTableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageview;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@end
