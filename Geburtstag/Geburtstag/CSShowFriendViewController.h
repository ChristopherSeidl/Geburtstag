//
//  CSShowFriendViewController.h
//  Geburtstag
//
//  Created by Christopher Seidl on 23/05/2014.
//  Copyright (c) 2014 Christopher Seidl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSShowFriendViewController : UIViewController

@property (strong, nonatomic) NSString *Name;
@property (strong, nonatomic) NSString *Color;
@property (strong, nonatomic) NSString *Message;
@property (strong, nonatomic) NSString *Birthday;

@property (strong, nonatomic) UITextView *NameTextView;
@property (strong, nonatomic) UITextView *MessageTextView;
@property (strong, nonatomic) UITextView *BirthdayTextView;

@end
