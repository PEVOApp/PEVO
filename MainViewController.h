//
//  MainViewController.h
//  Pevo
//
//  Created by Alicia MacBook Pro on 5/4/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UIAccelerometerDelegate>


@property (strong, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;


- (IBAction)hotlineButton:(id)sender;


@end
