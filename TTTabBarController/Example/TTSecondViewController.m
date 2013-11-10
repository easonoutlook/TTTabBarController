//
//  TTSecondViewController.m
//  TTTabBarController
//
//  Created by Eason on 10/11/2013.
//  Copyright (c) 2013 Eason. All rights reserved.
//

#import "TTSecondViewController.h"

@interface TTSecondViewController ()

@end

@implementation TTSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Second";
        [self.view setBackgroundColor:[UIColor darkGrayColor]];
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"tab_category_sel"] withFinishedUnselectedImage:[UIImage imageNamed:@"tab_category"]];
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
