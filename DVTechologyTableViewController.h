//
//  DVTechologyTableViewController.h
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/21/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DVTechologyTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>



@property (strong, nonatomic) IBOutlet UITableView *TechTableView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;


@end
