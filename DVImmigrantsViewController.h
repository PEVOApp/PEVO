//
//  DVImmigrantsViewController.h
//  Pevo
//
//  Created by Alicia MacBook Pro on 10/7/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DVImmigrants.h"

@interface DVImmigrantsViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIScrollView *ImmigrantScrollView;
@property (strong, nonatomic) IBOutlet UILabel *ImmigrantLabel;
@property (strong, nonatomic) IBOutlet UITextView *ImmigrantDetailTextView;

@property (nonatomic,strong) DVImmigrants *PPImmigrant;

@end
