//
//  SurveyResultsViewController.m
//  Pevo
//
//  Created by Alicia MacBook Pro on 5/5/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

#import "SurveyResultsViewController.h"
#import "SWRevealViewController.h"

@interface SurveyResultsViewController ()


@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;

@end


@implementation SurveyResultsViewController
@synthesize score;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    NSLog(@"SurveyResultsViewController viewDidLoad revealViewController %@", self.revealViewController);
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)self.score];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
