//
//  StateDataTableViewController.h
//  Pevo
//
//  Created by Alicia MacBook Pro on 7/7/15.
//  Copyright © 2015 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StateDataTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIBarButtonItem *stateDataBarButtonPress;

@property (strong, nonatomic) IBOutlet UITableView *stateDataTableView;




@end
