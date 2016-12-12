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
    self.PPNewInfoDetail.text = _PPNewInfo.infoDetail;
    
    [self.PPNewScrollView setScrollEnabled:YES];
    [self.PPNewScrollView setContentSize:CGSizeMake(320, 1000)];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
