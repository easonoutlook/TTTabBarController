//
//  TTTabBarController.m
//  TTTabBarController
//
//  Created by Eason on 10/11/2013.
//  Copyright (c) 2013 Eason. All rights reserved.
//

#import "TTTabBarController.h"
#import "TTFirstViewController.h"
#import "TTSecondViewController.h"
#import "TTThirdViewController.h"
#import "TTFourViewController.h"

@interface TTTabBarController ()

@end

@implementation TTTabBarController

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
	// Do any additional setup after loading the view.
        
    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tab_background"]];
    // fix bug for iOS7, first launch not show indicator image
    // http://stackoverflow.com/questions/18820988/uitabbar-appearance-setselectionindicatorimage-does-not-work-on-first-launch-ios
    //    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"tab_selected"]];
    [[self tabBar] setSelectionIndicatorImage:[UIImage imageNamed:@"tab_selected"]];

    // remove shadow gradient line
    [[UITabBar appearance] setShadowImage:[UIImage new]];
    
    
    TTFirstViewController *first = [[TTFirstViewController alloc] init];
    TTSecondViewController *second = [[TTSecondViewController alloc] init];
    TTThirdViewController *third = [[TTThirdViewController alloc] init];
    TTFourViewController *four = [[TTFourViewController alloc] init];
    
    UINavigationController *firstController = [[UINavigationController alloc] initWithRootViewController:first];
    UINavigationController *secondController = [[UINavigationController alloc] initWithRootViewController:second];
    UINavigationController *thirdController = [[UINavigationController alloc] initWithRootViewController:third];
    UINavigationController *fourController = [[UINavigationController alloc] initWithRootViewController:four];
    
    [self setViewControllers:@[firstController, secondController, thirdController, fourController]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
