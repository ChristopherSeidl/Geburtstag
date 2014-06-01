//
//  CSAddFriendViewController.m
//  Geburtstag
//
//  Created by Christopher Seidl on 30/05/2014.
//  Copyright (c) 2014 Christopher Seidl. All rights reserved.
//

#import "CSAddFriendViewController.h"

@interface CSAddFriendViewController ()

@end

@implementation CSAddFriendViewController

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UINavigationController *navigationController = [[UINavigationController alloc] init];
    UINavigationBar *navigationBar = navigationController.navigationBar;

    navigationBar.frame = CGRectMake(0, 0, 1024, 66);
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 320, 44)];
    
    UITextField *firstNameField = [[UITextField alloc] initWithFrame:CGRectMake(30, 75, 260, 50)];
    UITextField *lastNameField = [[UITextField alloc] initWithFrame:CGRectMake(30, 125, 260, 50)];
    
    UITextView *messageView = [[UITextView alloc] initWithFrame:CGRectMake(30, 190, 260, 50)];
    UIDatePicker *birthdayPicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 250, 280, 100)];

    navigationBar.barTintColor = [UIColor colorWithRed:26.0 / 255.0 green:214.0 / 255.0 blue:253.0/ 255.0 alpha:1.0];
    navigationBar.barStyle = UIBarStyleBlack;
    navigationBar.translucent = YES;
    
    title.text = @"Add Friend";
    title.textColor = [UIColor whiteColor];
    title.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:20.0];
    title.textAlignment = NSTextAlignmentCenter;
    title.backgroundColor = [UIColor clearColor];
    
    firstNameField.placeholder = @"First Name";
    [firstNameField setAutocorrectionType:UITextAutocorrectionTypeNo];
    lastNameField.placeholder = @"Last Name";
    [firstNameField setAutocorrectionType:UITextAutocorrectionTypeNo];
    
    firstNameField.textAlignment = NSTextAlignmentLeft;
    lastNameField.textAlignment = NSTextAlignmentLeft;
    
    firstNameField.backgroundColor = [UIColor clearColor];
    firstNameField.font = [UIFont fontWithName:@"AppleSDGothicNeo-Regular"  size:24.0];
    lastNameField.backgroundColor = [UIColor clearColor];
    lastNameField.font = [UIFont fontWithName:@"AppleSDGothicNeo-Regular"  size:24.0];
    
    firstNameField.borderStyle = UITextBorderStyleNone;
    lastNameField.borderStyle = UITextBorderStyleNone;
    
    messageView.backgroundColor = [UIColor whiteColor];
    messageView.font = [UIFont fontWithName:@"AppleSDGothicNeo-Light" size:20.0];
    messageView.text = @"Happy Birthday";
    messageView.textColor = [UIColor darkGrayColor];
    messageView.textAlignment = NSTextAlignmentLeft;
    
    birthdayPicker.datePickerMode = UIDatePickerModeDate;
    birthdayPicker.backgroundColor = [UIColor clearColor];

    [self.view addSubview:navigationBar];
    [self.view addSubview:title];
    [self.view addSubview:firstNameField];
    [self.view addSubview:lastNameField];
    [self.view addSubview:messageView];
    [self.view addSubview:birthdayPicker];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(Done)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(Cancel)];
    
    [[UIBarButtonItem appearance] setTintColor:[UIColor whiteColor]];
}

- (void)Cancel {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)Done {
    NSLog(@"Great!");
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
