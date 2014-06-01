//
//  CSOverviewViewController.m
//  Geburtstag
//
//  Created by Christopher Seidl on 18/05/2014.
//  Copyright (c) 2014 Christopher Seidl. All rights reserved.
//

#import "CSOverviewViewController.h"
#import "CSOverviewCell.h"
#import "CSAboutUsViewController.h"
#import "CSAddFriendViewController.h"

@interface CSOverviewViewController ()

@end

@implementation CSOverviewViewController

- (instancetype)init {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(300.0, 185.0);
    layout.minimumInteritemSpacing = 15.0;
    layout.minimumLineSpacing = 15.0;
    layout.headerReferenceSize = CGSizeMake(600.0, 15.0);
    layout.footerReferenceSize = CGSizeMake(600.0, 15.0);
    
    return (self = [super initWithCollectionViewLayout:layout]);
}


- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.collectionView registerClass:[CSOverviewCell class] forCellWithReuseIdentifier:@"card"];
    self.collectionView.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0.0];
    
    self.view.backgroundColor = [UIColor colorWithRed:235.0 / 255.0 green:235.0 / 255.0 blue:235.0 / 255.0 alpha:1.0];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    title.text = @"Geburtstag";
    title.textColor = [UIColor whiteColor];
    title.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:20.0];
    title.textAlignment = NSTextAlignmentCenter;
    title.backgroundColor = [UIColor clearColor];
    [self.navigationController.navigationBar addSubview:title];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(Add)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(AboutUs)];

    [[UIBarButtonItem appearance] setTintColor:[UIColor whiteColor]];
    
    self.messages = @[ @"Hey Chris, have a great Birthday!", @"Hi, Merry Christmas! P.S. by the way, Happy Birthday!!!", @"Fair go to Tim! Happy Birthday Timmy. Have a great day! Smiles! :D", @"Hi Ben, I hope you are enjoying your new Nexus 5", @"Hey Ben, I hope photoshop unkills itself soon. Happy Birthday! Great job on the Geburtstag Project" ];
    self.names = @[ @"Christopher Seidl", @"Christian Flynn", @"Tim Grenough", @"Benjamin Maliel", @"Ben McLean" ];
    self.birthdays = @[ @"29 March 1999", @"26 December 1999", @"5 February 1999", @"17 June 1999", @"19 September 1999" ];
    self.colorsForCards = @[ @"RED", @"BLUE", @"YELLOW", @"BLUE", @"RED" ];
    self.emails = @[ @"2367christophermarkseidl@gmail.com", @"Christian.Flynn@cgs.act.edu.au", @"Tim.Grenough@cgs.act.edu.au", @"Benjamin.Maliel@cgs.act.edu.au", @"Ben.McLain@cgs.act.edu.au" ];
    
//    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
//    testObject[@"foo"] = @"bar";
//    [testObject saveInBackground];
}

- (void) Add {
    CSAddFriendViewController *addFriend = [[CSAddFriendViewController alloc] init];
    addFriend.modalTransitionStyle = UIModalTransitionStyleCoverVertical;

    [self.navigationController presentViewController:addFriend animated:YES completion:nil];
}

- (void) AboutUs {
    CSAboutUsViewController *aboutUs = [[CSAboutUsViewController alloc] init];
    aboutUs.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self.navigationController presentViewController:aboutUs animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CSOverviewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"card" forIndexPath:indexPath];
    
    cell.messageView.textColor = [UIColor darkTextColor];
    cell.messageView.text = [self.messages objectAtIndex:indexPath.row];
    cell.messageView.textAlignment = NSTextAlignmentLeft;
    cell.messageView.font = [UIFont fontWithName:@"AppleSDGothicNeo-Light" size:16.0];
    cell.messageView.userInteractionEnabled = NO;
    
    cell.birthdayLabel.textColor = [UIColor darkTextColor];
    cell.birthdayLabel.text = [self.birthdays objectAtIndex:indexPath.row];
    cell.birthdayLabel.textAlignment = NSTextAlignmentLeft;
    cell.birthdayLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Light" size:16.0];
    
    cell.nameLabel.textColor = [UIColor darkTextColor];
    cell.nameLabel.text = [self.names objectAtIndex:indexPath.row];
    cell.nameLabel.textAlignment = NSTextAlignmentLeft;
    cell.nameLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Medium" size:18.0];
    
    cell.emailLabel.textColor = [UIColor darkTextColor];
    cell.emailLabel.text = [self.emails objectAtIndex:indexPath.row];
    cell.emailLabel.textAlignment = NSTextAlignmentLeft;
    cell.emailLabel.font = [UIFont fontWithName:@"AppleSDGothicNeo-Light" size:12.0];

    cell.nameLabel.backgroundColor = [UIColor clearColor];
    cell.birthdayLabel.backgroundColor = [UIColor clearColor];
    cell.messageView.backgroundColor = [UIColor clearColor];
    
    if ([[self.colorsForCards objectAtIndex:indexPath.row] isEqualToString:@"RED"]) {
        cell.colorStrip.backgroundColor = [UIColor redColor];
    } else if ([[self.colorsForCards objectAtIndex:indexPath.row] isEqualToString:@"BLUE"]) {
        cell.colorStrip.backgroundColor = [UIColor blueColor];
    } else if ([[self.colorsForCards objectAtIndex:indexPath.row] isEqualToString:@"YELLOW"]) {
        cell.colorStrip.backgroundColor = [UIColor yellowColor];
    } else if ([[self.colorsForCards objectAtIndex:indexPath.row] isEqualToString:@"ORANGE"]) {
        cell.colorStrip.backgroundColor = [UIColor orangeColor];
    }
    
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.messages count];
}

@end
