//
//  CSOverviewViewController.h
//  Geburtstag
//
//  Created by Christopher Seidl on 18/05/2014.
//  Copyright (c) 2014 Christopher Seidl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface CSOverviewViewController : UICollectionViewController
@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) NSArray *names;
@property (nonatomic, strong) NSArray *birthdays;
@property (nonatomic, strong) NSArray *colorsForCards;
@property (nonatomic, strong) NSArray *emails;
@end
