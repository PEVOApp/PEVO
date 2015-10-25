//
//  StayingSafeTableViewController.h
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/21/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StayingSafeTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *StayingSafeTableView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@end
