//
//  CSOverviewCell.m
//  Geburtstag
//
//  Created by Christopher Seidl on 18/05/2014.
//  Copyright (c) 2014 Christopher Seidl. All rights reserved.
//

#import "CSOverviewCell.h"

@implementation CSOverviewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.messageView = [[UITextView alloc] init];
        self.nameLabel = [[UILabel alloc] init];
        self.birthdayLabel = [[UILabel alloc] init];
        self.colorStrip = [[UILabel alloc] init];
        
        [self.contentView addSubview:self.nameLabel];
        [self.contentView addSubview:self.messageView];
        [self.contentView addSubview:self.birthdayLabel];
        [self.contentView addSubview:self.colorStrip];
    }

    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.colorStrip.frame = CGRectMake(0.0, 0.0, 20.0, 185);
    self.nameLabel.frame = CGRectMake(30.0, 0.0, 260.0, 60);
    self.birthdayLabel.frame = CGRectMake(30.0, 40.0, 260, 24.0);
    self.messageView.frame = CGRectMake(30.0, 65.0, 260.0, 100.0);

//    self.background.frame = CGRectMake(20.0, 0.0, 280.0, 200.0);
//    self.background.image = [UIImage imageNamed:@"Wallpaper"];
}


@end
