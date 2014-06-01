//
//  CSOverviewCell.h
//  Geburtstag
//
//  Created by Christopher Seidl on 18/05/2014.
//  Copyright (c) 2014 Christopher Seidl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSOverviewCell : UICollectionViewCell
@property (nonatomic) UITextView *messageView;
@property (nonatomic) UILabel *nameLabel;
@property (nonatomic) UILabel *birthdayLabel;
@property (nonatomic) UILabel *colorStrip;
@property (nonatomic) UILabel *emailLabel;
@end
