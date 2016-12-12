//
//  MainViewController.m
//  Pevo
//
//  Created by Alicia MacBook Pro on 5/4/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

#import "MainViewController.h"
#import "SWRevealViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    
//    self.nationalHotline.dataDetectorTypes = UIDataDetectorTypePhoneNumber;
    
    
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    
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


- (IBAction)hotlineButton:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"telprompt://18007997233"]];
    
    
}

@end
