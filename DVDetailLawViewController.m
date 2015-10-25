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

    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    
    self.DVLawLabel.text = _dvLaw.lawTitle;
    self.DVLawDetailTextView.text = _dvLaw.lawDetail;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
