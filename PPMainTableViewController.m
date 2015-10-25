//
//  PPMainTableViewController.m
//  the Pevo
//
//  Created by Rusty Zarse on 2/4/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "PPMainTableViewController.h"

@interface PPMainTableViewController ()

@end

@implementation PPMainTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
}

- (IBAction)unwindToMainViewController:(UIStoryboardSegue *)unwindSegue
{
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
