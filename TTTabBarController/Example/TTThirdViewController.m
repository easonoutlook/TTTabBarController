//
//  TTThirdViewController.m
//  TTTabBarController
//
//  Created by Eason on 10/11/2013.
//  Copyright (c) 2013 Eason. All rights reserved.
//

#import "TTThirdViewController.h"

@interface TTThirdViewController ()

@end

@implementation TTThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Third";
        [self.view setBackgroundColor:[UIColor redColor]];
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"tab_popular_sel"] withFinishedUnselectedImage:[UIImage imageNamed:@"tab_popular"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
