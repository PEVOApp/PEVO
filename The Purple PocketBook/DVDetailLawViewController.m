//
//  DVDetailLawViewController.m
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/14/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "DVDetailLawViewController.h"



@interface DVDetailLawViewController ()

@end

@implementation DVDetailLawViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    
    self.DVLawLabel.text = _dvLaw.lawTitle;
    self.DVLawDetailTextView.text = _dvLaw.lawDetail;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    
    [self.DVLawDetailScrollView setScrollEnabled:YES];
    [self.DVLawDetailScrollView setContentSize:CGSizeMake(0, 1000)];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self.DVLawDetailScrollView setContentSize:CGSizeMake(0, 1000)];
    
}

@end
