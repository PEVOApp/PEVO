//
//  DVImmigrantsViewController.m
//  Pevo
//
//  Created by Alicia MacBook Pro on 10/7/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "DVImmigrantsViewController.h"

@interface DVImmigrantsViewController ()

@end

@implementation DVImmigrantsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    self.ImmigrantLabel.text = _PPImmigrant.immigrantTitle;
    self.ImmigrantDetail.text = _PPImmigrant.immigrantDetail;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    
    [self.ImmigrantScrollView setScrollEnabled:YES];
    [self.ImmigrantScrollView setContentSize:CGSizeMake(0, 1000)];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self.ImmigrantScrollView setContentSize:CGSizeMake(0, 1000)];
    
}



@end
