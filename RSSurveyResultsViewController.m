//
//  RSSurveyResultsViewController.m
//  RelationshipSurvey
//
//  Created by Rusty Zarse on 1/29/14.
//
//

#import "RSSurveyResultsViewController.h"
#import "SWRevealViewController.h"

@interface RSSurveyResultsViewController ()

@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation RSSurveyResultsViewController
@synthesize score;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)self.score];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
