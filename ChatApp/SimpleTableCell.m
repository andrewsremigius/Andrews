//
//  SimpleTableCell.m
//  ChatApp
//
//  Created by Mozzapp on 10/04/13.
//  Copyright (c) 2013 Mozzapp. All rights reserved.
//

#import "SimpleTableCell.h"


@implementation SimpleTableCell
@synthesize nameLabel = _nameLabel;
@synthesize imageview = _imageview;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state thanks
}

@end
