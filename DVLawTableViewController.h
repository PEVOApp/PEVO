//
//  DVLawTableViewController.h
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/13/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DVLawTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>


@property (strong, nonatomic) IBOutlet UITableView *TheLawTableView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;


@end
