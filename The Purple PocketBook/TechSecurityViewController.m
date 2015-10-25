//
//  TechSecurityViewController.m
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/22/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "TechSecurityViewController.h"



@interface TechSecurityViewController ()

@end

@implementation TechSecurityViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    
    self.DVTechSecurityLabel.text = _dvTechSecurity.techTitle;
    self.DVTechSecurityTextView.text = _dvTechSecurity.techDetail;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidAppear:(BOOL)animated {
    
    [self.TechScrollView setScrollEnabled:YES];
    [self.TechScrollView setContentSize:CGSizeMake(0, 1000)];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self.TechScrollView setContentSize:CGSizeMake(0, 1000)];
    
}

@end
