//
//  TechSecurityViewController.h
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/22/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TechSecurity.h"

@interface TechSecurityViewController : UIViewController


@property (strong, nonatomic) IBOutlet UILabel *DVTechSecurityLabel;
@property (strong, nonatomic) IBOutlet UITextView *DVTechSecurityTextView;

@property (nonatomic,strong) TechSecurity *dvTechSecurity;

@end
