//
//  PPHelpTableViewController.m
//  Pevo
//
//  Created by Alicia MacBook Pro on 10/3/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "PPHelpTableViewController.h"
#import "SWRevealViewController.h"


@interface PPHelpTableViewController ()


@property (nonatomic, strong) NSArray *infoItems;


@end

@implementation PPHelpTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    _infoItems = @[@"hide app", @"Text Contact", @"add photos"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return [self.infoItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [self.infoItems objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    return cell;
}

@end
