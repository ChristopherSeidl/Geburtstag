//
//  CSAboutUsViewController.m
//  Geburtstag
//
//  Created by Christopher Seidl on 29/05/2014.
//  Copyright (c) 2014 Christopher Seidl. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "CSAboutUsViewController.h"

@interface CSAboutUsViewController ()

@end

@implementation CSAboutUsViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:26.0 / 255.0 green:214.0 / 255.0 blue:253.0/ 255.0 alpha:1.0];
    
    UILabel *Title = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 300, 50)];
    Title.text = @"We need your help";
    Title.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:30.0];
    Title.textAlignment = NSTextAlignmentCenter;
    Title.backgroundColor = [UIColor clearColor];
    Title.textColor = [UIColor whiteColor];
    
    UITextView *Content = [[UITextView alloc] init];
    Content.frame = CGRectMake(10, 70, 300, 200);
    Content.textAlignment = NSTextAlignmentCenter;
    Content.userInteractionEnabled = NO;
    Content.backgroundColor = [UIColor clearColor];
    Content.textColor = [UIColor whiteColor];
    Content.font = [UIFont fontWithName:@"AppleSDGothicNeo-Light" size:19.0];
    
    Content.text = @"We want to give you apps that you will love to use, and we want to keep doing that. To ensure that we can keep on developing, creating and experimenting, we need your help. A simple gift of $1 will help us to continue bringing you helpful Apps";
    
    UILabel *donateButtonLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 280, 260, 70)];
    donateButtonLabel.text = @"Donate $1";
    donateButtonLabel.textAlignment = NSTextAlignmentCenter;
    donateButtonLabel.textColor = [UIColor redColor];
    donateButtonLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:18.0];
    
    UIButton *donateButton = [[UIButton alloc] initWithFrame:CGRectMake(30, 280, 260, 70)];
    donateButton.backgroundColor = [UIColor whiteColor];
    donateButton.tintColor = [UIColor redColor];
    donateButton.titleLabel.text = @"Donate $4";
    donateButton.layer.cornerRadius = 10; // this value vary as per your desire
    donateButton.clipsToBounds = YES;
    
    UILabel *cancelButtonLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 370, 260, 70)];
    cancelButtonLabel.text = @"Maybe Later";
    cancelButtonLabel.textAlignment = NSTextAlignmentCenter;
    cancelButtonLabel.textColor = [UIColor blueColor];
    cancelButtonLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Regular" size:18.0];
    
    UIButton *cancelButton = [[UIButton alloc] initWithFrame:CGRectMake(30, 370, 260, 70)];
    cancelButton.backgroundColor = [UIColor whiteColor];
    cancelButton.tintColor = [UIColor blueColor];
    cancelButton.titleLabel.text = @"Maybe Later";
    cancelButton.layer.cornerRadius = 10; // this value vary as per your desire
    cancelButton.clipsToBounds = YES;
    
    [self.view addSubview:Title];
    [self.view addSubview:Content];
    [self.view addSubview:donateButton];
    [self.view addSubview:donateButtonLabel];
    [self.view addSubview:cancelButton];
    [self.view addSubview:cancelButtonLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
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
