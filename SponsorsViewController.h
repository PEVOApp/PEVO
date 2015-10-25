//
//  SponsorsViewController.h
//  Pevo
//
//  Created by Alicia MacBook Pro on 10/12/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Sponsors.h"

@interface SponsorsViewController : UIViewController
- (IBAction)purseButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *purseButton;

@property (strong, nonatomic) IBOutlet UIImageView *sponsorImage;
@property (strong, nonatomic) IBOutlet UILabel *sponsorLabel;
@property (strong, nonatomic) IBOutlet UITextView *sponsorTextView;

@property (strong, nonatomic) Sponsors *sponsor;

@end
