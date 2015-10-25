//
//  FindHelpTableViewController.m
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/21/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "FindHelpTableViewController.h"
#import "WebsitesViewController.h"
#import "SWRevealViewController.h"


@interface FindHelpTableViewController ()
{
    NSArray *findingHelp, *site;
}

@end

@implementation FindHelpTableViewController


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

    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    //_sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    findingHelp = [NSArray arrayWithObjects:
                   NSLocalizedString(@"Georgia Victim Services Programs", @"Georgia Victim Services Programs"),
                   NSLocalizedString(@"WomensLaw - Finding a Lawyer", @"WomensLaw - Finding a Lawyer"),
                   NSLocalizedString(@"The National Domestic Violence Hotline", @"The National Domestic Violence Hotline"),
                   NSLocalizedString(@"LeavingAbuse", @"LeavingAbuse"),
                   NSLocalizedString(@"National Coalition Against Domestic Violence", @"National Coalition Against Domestic Violence"),
                   NSLocalizedString(@"HelpGuide.org", @"HelpGuide.org"),
                   NSLocalizedString(@"DomesticViolence.org", @"DomesticViolence.org"),
                   NSLocalizedString(@"The United States Department of Justice", @"The United States Department of Justice"),
                   NSLocalizedString(@"Hope for Domestic Violence", @"Hope for Domestic Violence"), nil];
    
    site = [NSArray arrayWithObjects:
            @"http://cjcc.georgia.gov/victim-services-programs",
            @"http://www.womenslaw.org",
            @"http://www.thehotline.org",
            @"http://leavingabuse.com",
            @"http://www.ncadv.org",
            @"http://www.helpguide.org/mental/domestic_violence_abuse_types_signs_causes_effects.htm",
            @"http://www.domesticviolence.org",
            @"http://www.ovw.usdoj.gov/domviolence.htm",
            @"http://hope4dv.org/#/welcome", nil];


    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
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
    return [findingHelp count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.textLabel.text = [findingHelp objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [site objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.numberOfLines=0;
    cell.textLabel.font=[UIFont fontWithName:@"Georgia-Bold" size:14];

    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([[segue identifier] isEqualToString:@"findHelpSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        WebsitesViewController *webViewController = segue.destinationViewController;
        webViewController.site =[findingHelp objectAtIndex:indexPath.row];
        
        switch (indexPath.row) {
            case 0:
                webViewController.site = @"http://cjcc.georgia.gov/victim-services-programs";
                break;
            case 1:
                webViewController.site = @"http://leavingabuse.com";
                break;
                
            case 2:
                webViewController.site = @"http://www.womenslaw.org/gethelp_type.php?type_name=Finding%20a%20Lawyer";
                break;
                
            case 3:
                webViewController.site = @"http://www.thehotline.org";
                break;
                
            case 4:
                webViewController.site = @"http://www.helpguide.org/mental/domestic_violence_abuse_types_signs_causes_effects.htm";
                break;
                
            case 5:
                webViewController.site = @"http://www.domesticviolence.org";
                break;
                
            case 6:
                webViewController.site = @"http://www.ncadv.org";
                break;
                
            case 7:
                webViewController.site = @"http://www.ovw.usdoj.gov/domviolence.htm";
                break;
                
            case 8:
                webViewController.site = @"http://hope4dv.org/#/welcome";
                break;
                
            default:
                break;
        }
    }
    
    
}
@end
