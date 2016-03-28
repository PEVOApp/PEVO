//
//  PPMainViewController.m
//  the Pevo
//
//  Created by Alicia MacBook Pro on 2/5/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "PPMainViewController.h"
#import "SWRevealViewController.h"



@interface PPMainViewController ()

@end

@implementation PPMainViewController

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
    
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    
    self.nationalHotline.dataDetectorTypes = UIDataDetectorTypePhoneNumber;
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindToMainViewController:(UIStoryboardSegue *)unwindSegue
{
}
@end
