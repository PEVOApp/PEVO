//
//  DVDetailLawViewController.h
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/14/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TheLaw.h"

@interface DVDetailLawViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *DVLawDetailScrollView;
@property (strong, nonatomic) IBOutlet UILabel *DVLawLabel;
@property (strong, nonatomic) IBOutlet UITextView *DVLawDetailTextView;

@property (nonatomic,strong) TheLaw *dvLaw;


@end
