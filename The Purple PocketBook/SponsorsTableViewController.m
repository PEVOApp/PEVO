//
//  SponsorsTableViewController.m
//  Pevo
//
//  Created by Alicia MacBook Pro on 5/5/16.
//  Copyright © 2016 Alicia MacBook Pro. All rights reserved.
//

#import "SponsorsTableViewController.h"
#import "SWRevealViewController.h"
#import "SponsorsViewController.h"
#import "Sponsors.h"


@interface SponsorsTableViewController ()
{
    
    NSArray *ppSponsors;
    
}

@end

@implementation SponsorsTableViewController

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
    
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    Sponsors *sponsor1 = [Sponsors new];
    sponsor1.title = NSLocalizedString(@"The Pevo Foundation, Inc.", @"sponsorTitle1");
    sponsor1.sponsorImage = @"scarfIcon.png";
    sponsor1.detail = NSLocalizedString(@"The Pevo is the first Domestic Violence mobile app in the State of Georgia and it FREE!!! \n\nIt is the most comprehensive mobile app for domestic violence created thus far. \n\nThis app features: \n\nSecrecy: the app provides a discreet, untraceable platform for women to review their available resources, including local shelter contact information. \n\nEducation: Questionnaire designed to confirm what type of domestic violence you may be experiencing. \n\nSafe, secure escape options: the women can finally see relief from this awful situation. \n\nSuggestions on how to keep your social media accounts secure. \n\nLegal information (State of GA ONLY) \n\nInternet connection is not required to access this app once downloaded \n\nOffered in 6 different languages: English, Korean, Spanish, Arabic, Urbu and Hindi", @"sponsorDetail1");
    
    
    
    ppSponsors = [NSArray arrayWithObjects:sponsor1, nil];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return [ppSponsors count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    
    Sponsors *sponsorship = [ppSponsors objectAtIndex:indexPath.row];
    UIImageView *sponsorImageView = (UIImageView *)[cell viewWithTag:100];
    sponsorImageView.image = [UIImage imageNamed:sponsorship.sponsorImage];
    
    UILabel *titleLabel = (UILabel *)[cell viewWithTag:101];
    titleLabel.text = sponsorship.title;
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    if ([segue.identifier isEqualToString:@"SponsorSegue"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        SponsorsViewController *SponsorController = segue.destinationViewController;
//        SponsorController.sponsor = [ppSponsors objectAtIndex:indexPath.row];
//    }
}
@end