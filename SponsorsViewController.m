//
//  SponsorsViewController.m
//  Pevo
//
//  Created by Alicia MacBook Pro on 10/12/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "SponsorsViewController.h"
#import "SponsorsTableViewController.h"
@interface SponsorsViewController ()

@end

@implementation SponsorsViewController


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
    
    
    self.sponsorLabel.text = _sponsor.title;
    self.sponsorTextView.text = _sponsor.detail;
    self.sponsorImage.image = [UIImage imageNamed:_sponsor.sponsorImage];

 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
//    if ([[segue identifier] isEqualToString:@"webViewSegue"]) {
//        
//        PPWEBViewController *webViewController = segue.destinationViewController;
//        
//       
//                webViewController.site = @"http://www.pevo.us";
//                
//    }
    
}

- (IBAction)purseButton:(id)sender {
}
@end
