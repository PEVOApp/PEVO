//
//  StayingSafeViewController.m
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/21/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "StayingSafeViewController.h"
#import "StayingSafeTableViewController.h"



@interface StayingSafeViewController ()

@end

@implementation StayingSafeViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    self.StayingSafeLabel.text = _safe.stayingSafeTitle;
    self.StayingSafeTextView.text = _safe.stayingSafeDetail;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    
    [self.StayingSafeScrollView setScrollEnabled:YES];
    [self.StayingSafeScrollView setContentSize:CGSizeMake(0, 1000)];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self.StayingSafeScrollView setContentSize:CGSizeMake(0, 1000)];
    
}

@end
