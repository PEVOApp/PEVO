//
//  WebsitesViewController.m
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/23/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "WebsitesViewController.h"
#import "FindHelpTableViewController.h"

@interface WebsitesViewController ()

@end

@implementation WebsitesViewController

@synthesize webView;
@synthesize site;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    
    NSURL *url = [NSURL URLWithString:self.site];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    webView.scalesPageToFit = YES;
    webView.autoresizesSubviews = YES;
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
