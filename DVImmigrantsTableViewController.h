//
//  DVImmigrantsTableViewController.h
//  Pevo
//
//  Created by Alicia MacBook Pro on 10/7/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DVImmigrantsTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>



@property (strong, nonatomic) IBOutlet UITableView *ImmigrantsTableView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@end
