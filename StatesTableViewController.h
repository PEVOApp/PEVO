//
//  StatesTableViewController.h
//  Pevo
//
//  Created by Alicia MacBook Pro on 7/6/15.
//  Copyright © 2015 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StatesTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIBarButtonItem *stateBarButtonPress;

@property (strong, nonatomic) IBOutlet UITableView *stateTableView;

@end
