//
//  TTFourViewController.m
//  TTTabBarController
//
//  Created by Eason on 10/11/2013.
//  Copyright (c) 2013 Eason. All rights reserved.
//

#import "TTFourViewController.h"

@interface TTFourViewController ()

@end

@implementation TTFourViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Four";
        [self.view setBackgroundColor:[UIColor blueColor]];
        [self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"tab_manage_sel"] withFinishedUnselectedImage:[UIImage imageNamed:@"tab_manage"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [[self tabBarItem] setBadgeValue:@"5"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
