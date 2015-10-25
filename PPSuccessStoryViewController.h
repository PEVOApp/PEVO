//
//  PPSuccessStoryViewController.h
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/16/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SuccessStory.h"

@interface PPSuccessStoryViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIImageView *successImage;
@property (strong, nonatomic) IBOutlet UILabel *successLabel;
@property (strong, nonatomic) IBOutlet UITextView *successTextView;

@property (strong, nonatomic) SuccessStory *stories;


@end
