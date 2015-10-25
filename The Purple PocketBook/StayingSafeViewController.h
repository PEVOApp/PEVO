//
//  StayingSafeViewController.h
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/21/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StayingSafe.h"

@interface StayingSafeViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *StayingSafeScrollView;
@property (strong, nonatomic) IBOutlet UILabel *StayingSafeLabel;
@property (strong, nonatomic) IBOutlet UITextView *StayingSafeTextView;


@property (nonatomic,strong) StayingSafe *safe;


@end
