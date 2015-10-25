//
//  InfoViewController.h
//  Pevo
//
//  Created by Alicia MacBook Pro on 10/3/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PPInfo.h"

@interface InfoViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *PPNewScrollView;
@property (strong, nonatomic) IBOutlet UILabel *PPNewInfoLabel;
@property (strong, nonatomic) IBOutlet UITextView *PPNewInfoDetailTextView;

@property (nonatomic,strong) PPInfo *PPNewInfo;

@end
