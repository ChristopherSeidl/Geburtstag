//
//  CSPresentAddFriendViewControllerTransition.m
//  Geburtstag
//
//  Created by Christopher Seidl on 31/05/2014.
//  Copyright (c) 2014 Christopher Seidl. All rights reserved.
//

#import "CSPresentAddFriendViewControllerTransition.h"

@implementation CSPresentAddFriendViewControllerTransition

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *addFriend = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *containerView = [transitionContext containerView];
    
    addFriend.view.frame = CGRectMake(320, 0, 0, 0);
    
    [containerView addSubview:addFriend.view];
    
    [UIView animateWithDuration:0.7 animations:^{
        addFriend.view.frame = containerView.bounds;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.7;
}

@end
