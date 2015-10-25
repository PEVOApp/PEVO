//
//  InfoViewController.m
//  Pevo
//
//  Created by Alicia MacBook Pro on 10/3/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    self.PPNewInfoLabel.text = _PPNewInfo.infoTitle;
    self.PPNewInfoDetailTextView.text = _PPNewInfo.infoDetail;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidAppear:(BOOL)animated {
    
    [self.PPNewScrollView setScrollEnabled:YES];
    [self.PPNewScrollView setContentSize:CGSizeMake(0, 1000)];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self.PPNewScrollView setContentSize:CGSizeMake(0, 1000)];
    
}

@end
