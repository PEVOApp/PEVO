//
//  PPSuccessStoryViewController.m
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/16/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "PPSuccessStoryViewController.h"


@interface PPSuccessStoryViewController ()

@end

@implementation PPSuccessStoryViewController

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
    

    self.successLabel.text = _stories.title;
    self.successTextView.text = _stories.detail;
    self.successImage.image = [UIImage imageNamed:_stories.successImage];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
