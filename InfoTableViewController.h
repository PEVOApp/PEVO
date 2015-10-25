//
//  InfoTableViewController.h
//  Pevo
//
//  Created by Alicia MacBook Pro on 10/3/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>


@property (strong, nonatomic) IBOutlet UITableView *InfoTableView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@end
