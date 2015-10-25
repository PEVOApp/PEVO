//
//  PPWEBViewController.m
//  Pevo
//
//  Created by Alicia MacBook Pro on 11/18/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "PPWEBViewController.h"

@interface PPWEBViewController ()

@end

@implementation PPWEBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *url = [NSURL URLWithString:self.site];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    self.wbView.scalesPageToFit = YES;
    self.wbView.autoresizesSubviews = YES;
    [self.wbView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
