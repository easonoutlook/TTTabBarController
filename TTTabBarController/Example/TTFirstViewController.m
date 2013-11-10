//
//  TTFirstViewController.m
//  TTTabBarController
//
//  Created by Eason on 10/11/2013.
//  Copyright (c) 2013 Eason. All rights reserved.
//

#import "TTFirstViewController.h"
#import "TTDemoViewController.h"

@interface TTFirstViewController ()

@end

@implementation TTFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"First";
        [self.view setBackgroundColor:[UIColor grayColor]];
        
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"tab_home_sel"] withFinishedUnselectedImage:[UIImage imageNamed:@"tab_home"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100.f, 100.f, 100.f, 50.f);
    [button setTitle:@"Push" forState:UIControlStateNormal];
    
    [button addTarget:self action:@selector(pushSubViewController) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)pushSubViewController
{
    TTDemoViewController *secondController = [[TTDemoViewController alloc] init];
    secondController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:secondController animated:YES];
//    [self pushViewController:secondController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
