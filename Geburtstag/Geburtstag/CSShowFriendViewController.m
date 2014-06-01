//
//  CSShowFriendViewController.m
//  Geburtstag
//
//  Created by Christopher Seidl on 23/05/2014.
//  Copyright (c) 2014 Christopher Seidl. All rights reserved.
//

#import "CSShowFriendViewController.h"
#import "CSShowFriendView.h"

@interface CSShowFriendViewController ()

@end

@implementation CSShowFriendViewController

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
    if ([self.Color isEqualToString:@"GREEN"]) {
        self.view.backgroundColor = [UIColor colorWithRed:76.0 / 255.0 green:217.0 / 255.0 blue:100.0 / 255.0 alpha:1.0];
    } else if ([self.Color isEqualToString:@"YELLOW"]) {
        self.view.backgroundColor = [UIColor colorWithRed:255.0 / 255.0 green:204.0 / 255.0 blue:0.0 / 255.0 alpha:1.0];
    } else if ([self.Color isEqualToString:@"ORANGE"]) {
        self.view.backgroundColor = [UIColor colorWithRed:255.0 / 255.0 green:149.0 / 255.0 blue:0.0 / 255.0 alpha:1.0];
    } else if ([self.Color isEqualToString:@"RED"]) {
        self.view.backgroundColor = [UIColor colorWithRed:255.0 / 255.0 green:91.0 / 255.0 blue:55.0 / 255.0 alpha:1.0];
    } else if ([self.Color isEqualToString:@"VIOLET"]) {
        self.view.backgroundColor = [UIColor colorWithRed:198.0 / 255.0 green:68.0 / 255.0 blue:252.0 / 255.0 alpha:1.0];
    } else if ([self.Color isEqualToString:@"BLUE"]) {
        self.view.backgroundColor = [UIColor colorWithRed:0.0 / 255.0 green:122.0 / 255.0 blue:255.0 / 255.0 alpha:1.0];
    } else {
        self.view.backgroundColor = [UIColor colorWithRed:76.0 / 255.0 green:217.0 / 255.0 blue:100.0 / 255.0 alpha:1.0];
    }
}

//- (void)viewDidLayoutSubviews {
//    self.NameTextView.text = self.Name;
//    self.NameTextView.frame = CGRectMake(320, 100, 640, 10);
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
