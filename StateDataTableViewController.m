//
//  StateDataTableViewController.m
//  Pevo
//
//  Created by Alicia MacBook Pro on 7/7/15.
//  Copyright © 2015 Alicia MacBook Pro. All rights reserved.
//

#import "StateDataTableViewController.h"
#import "SWRevealViewController.h"

@interface StateDataTableViewController ()



@end

@implementation StateDataTableViewController {
    
    NSArray *stateDataItems;
}


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    
    _stateDataBarButtonPress.target = self.revealViewController;
    _stateDataBarButtonPress.action = @selector(revealToggle:);
    
    
    stateDataItems = @[@"Pevo home", @"state shelters", @"state law", @"state unemployment", @"where to find help"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return stateDataItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = [stateDataItems objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Set the title of navigation bar by using the menu items
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    UINavigationController *destViewController = (UINavigationController*)segue.destinationViewController;
    destViewController.title = [[stateDataItems objectAtIndex:indexPath.row] capitalizedString];

}

@end
