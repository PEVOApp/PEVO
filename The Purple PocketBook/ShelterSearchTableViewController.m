//
//  ShelterSearchTableViewController.m
//  the Pevo
//
//  Created by Alicia MacBook Pro on 3/18/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "ShelterSearchTableViewController.h"
#import "SWRevealViewController.h"
#import "ShelterSearchTableViewCell.h"
#import "Cities.h"

@interface ShelterSearchTableViewController ()  

@property (weak, nonatomic) IBOutlet UITextView *hotlineNumber;

@end

@implementation ShelterSearchTableViewController

{
    
    NSArray *cities;
    NSArray *searchResults;
}

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
    

    self.hotlineNumber.dataDetectorTypes = UIDataDetectorTypePhoneNumber;
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    //_sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    
    Cities *city0 = [Cities new];
    city0.cityName = @"Albany";
    city0.shelterName = @"Liberty House of Albany, Inc.";
    city0.hotlineNumber = @"(229) 439-7065";
    
    Cities *city1 = [Cities new];
    city1.cityName = @"Acworth";
    city1.shelterName = @"Ser Familia";
    city1.hotlineNumber = @"(678) 363-3079";
    
    Cities *city2 = [Cities new];
    city2.cityName = @"Athens";
    city2.shelterName = @"Project Safe, Inc.";
    city2.hotlineNumber = @"(706) 543-3331";
    
    Cities *city3 = [Cities new];
    city3.cityName = @"Atlanta";
    city3.shelterName = @"Partnership Against Domestic Violence, Inc.";
    city3.hotlineNumber = @"(404) 873-1766";
    
    Cities *city4 = [Cities new];
    city4.cityName = @"Atlanta";
    city4.shelterName = @"Ahimsa House - Help People and Pets";
    city4.hotlineNumber = @"404-452-6248";
    
    Cities *city5 = [Cities new];
    city5.cityName = @"Atlanta";
    city5.shelterName = @"Raksha Inc.";
    city5.hotlineNumber = @"(404) 842-0725";
    
    Cities *city6 = [Cities new];
    city6.cityName = @"Augusta";
    city6.shelterName = @"Safe Homes of Augusta, Inc.";
    city6.hotlineNumber = @"(706) 736-2499";
    
    Cities *city7 = [Cities new];
    city7.cityName = @"Blairsville";
    city7.shelterName = @"Support in Abusive Family Emergencies, Inc.";
    city7.hotlineNumber = @"(706) 379-3000";
    
    Cities *city8 = [Cities new];
    city8.cityName = @"Blue Ridge";
    city8.shelterName = @"North Georgia Mountain Crisis";
    city8.hotlineNumber = @"(706) 632-8400";
    
    Cities *city9 = [Cities new];
    city9.cityName = @"Brunswick";
    city9.shelterName = @"Glynn Community Crisis";
    city9.hotlineNumber = @"(912) 264-4357";
    
    Cities *city10 = [Cities new];
    city10.cityName = @"Canton";
    city10.shelterName = @"Cherokee Family Violence";
    city10.hotlineNumber = @"(770) 479-1703";
    
    Cities *city11 = [Cities new];
    city11.cityName = @"Carrollton";
    city11.shelterName = @"Carroll County Emergency Shelter, Inc.";
    city11.hotlineNumber = @"(770) 834-1141";
    
    Cities *city12 = [Cities new];
    city12.cityName = @"Cartersville";
    city12.shelterName = @"Christian League for Battered Women, Inc. (Tranquility House)";
    city12.hotlineNumber = @"(770) 386-8779";
    
    Cities *city13 = [Cities new];
    city13.cityName = @"Cedartown";
    city13.shelterName = @"Polk County Women's Shelter, Inc.";
    city13.hotlineNumber = @"(770) 749-9330";
    
    Cities *city14 = [Cities new];
    city14.cityName = @"Clayton";
    city14.shelterName = @"Fight Abuse in the Home (FAITH), Inc.";
    city14.hotlineNumber = @"(888) 782-1338";
    
    Cities *city15 = [Cities new];
    city15.cityName = @"Columbus";
    city15.shelterName = @"Columbus Alliance for Battered Women, Inc.";
    city15.hotlineNumber = @"(706) 324-3850";
    
    Cities *city16 = [Cities new];
    city16.cityName = @"Conyers";
    city16.shelterName = @"Project Renewal Domestic Violence Intervention Program, Inc.";
    city16.hotlineNumber = @"(770) 860-1666";
    
    Cities *city17 = [Cities new];
    city17.cityName = @"Cornelia";
    city17.shelterName = @"Circle of Hope, Inc.";
    city17.hotlineNumber = @"(706) 776-4673";
    
    Cities *city18 = [Cities new];
    city18.cityName = @"Cumming";
    city18.shelterName = @"Forsyth County Family Haven, Inc.";
    city18.hotlineNumber = @"(770) 887-1121";
    
    Cities *city19 = [Cities new];
    city19.cityName = @"Dahlonega";
    city19.shelterName = @"NOA's Ark, Inc.";
    city19.hotlineNumber = @"(706) 864-1986";
    
    Cities *city20 = [Cities new];
    city20.cityName = @"Dalton";
    city20.shelterName = @"Northwest Georgia Family Crisis Center, Inc.";
    city20.hotlineNumber = @"(706) 278-5586";
    
    Cities *city21 = [Cities new];
    city21.cityName = @"Decatur";
    city21.shelterName = @"International Women's House, Inc.";
    city21.hotlineNumber = @"(770) 413-5557";
    
    Cities *city22 = [Cities new];
    city22.cityName = @"Decatur";
    city22.shelterName = @"Women's Resource Center to End Domestic Violence, Inc.";
    city22.hotlineNumber = @"(404) 688-9436";
    
    Cities *city23 = [Cities new];
    city23.cityName = @"Doraville";
    city23.shelterName = @"Caminar Latino, Inc.";
    city23.hotlineNumber = @"(770) 873-3022";
    
    Cities *city24 = [Cities new];
    city24.cityName = @"Douglasville";
    city24.shelterName = @"S.H.A.R.E. House, Inc.";
    city24.hotlineNumber = @"(770) 489-7513";
    
    Cities *city25 = [Cities new];
    city25.cityName = @"Dublin";
    city25.shelterName = @"Women in Need of God's Shelter, Inc.";
    city25.hotlineNumber = @"(478) 272-8000";
    
    Cities *city26 = [Cities new];
    city26.cityName = @"Fayetteville";
    city26.shelterName = @"Fayette County Council on Domestic Violence";
    city26.hotlineNumber = @"(770) 460-1604";
    
    Cities *city27 = [Cities new];
    city27.cityName = @"Gainesville";
    city27.shelterName = @"Gateway House, Inc.";
    city27.hotlineNumber = @"(770) 536-5860";
    
    Cities *city28 = [Cities new];
    city28.cityName = @"Greensboro";
    city28.shelterName = @"Circle of Love Center, Inc.";
    city28.hotlineNumber = @"(706) 453-7135";
    
    Cities *city29 = [Cities new];
    city29.cityName = @"Hartwell";
    city29.shelterName = @"Northeast Georgia Council on Domestic Violence";
    city29.hotlineNumber = @"(706) 376-7111";
    
    Cities *city30 = [Cities new];
    city30.cityName = @"Hinesville";
    city30.shelterName = @"Tri-County Protective Agency, Inc.";
    city30.hotlineNumber = @"(912) 368-9200";
    
    Cities *city31 = [Cities new];
    city31.cityName = @"Jesup";
    city31.shelterName = @"Wayne County Protective Agency, Inc.";
    city31.hotlineNumber = @"(912) 588-0382";
    
    Cities *city32 = [Cities new];
    city32.cityName = @"Lafayette";
    city32.shelterName = @"Family Crisis Center of Walker, Dade, Catoosa, Chattooga Counties";
    city32.hotlineNumber = @"(706) 375-7630";
    
    Cities *city33 = [Cities new];
    city33.cityName = @"Lawrenceville";
    city33.shelterName = @"Partnership Against Domestic Violence, Inc.";
    city33.hotlineNumber = @"(770) 963-9799";
    
    Cities *city34 = [Cities new];
    city34.cityName = @"Macon";
    city34.shelterName = @"Crisis Line & Safe House";
    city34.hotlineNumber = @"(478) 738-9800";
    
    Cities *city35 = [Cities new];
    city35.cityName = @"Marietta";
    city35.shelterName = @"YWCA of Northwest Georgia";
    city35.hotlineNumber = @"(770) 427-3390";
    
    Cities *city36 = [Cities new];
    city36.cityName = @"McDonough";
    city36.shelterName = @"Flint Circuit Council on Family Violence, Inc. (Haven House)";
    city36.hotlineNumber = @"(770) 954-9229";
    
    Cities *city37 = [Cities new];
    city37.cityName = @"Morrow";
    city37.shelterName = @"Association on Battered Women of Clayton County, Inc. (Securus House)";
    city37.hotlineNumber = @"(770) 961-7233";
    
    Cities *city38 = [Cities new];
    city38.cityName = @"Rome";
    city38.shelterName = @"Hospitality House for Women, Inc.";
    city38.hotlineNumber = @"(706) 235-4673";
    
    Cities *city39 = [Cities new];
    city39.cityName = @"Savannah";
    city39.shelterName = @"Savannah Area Family Emergency";
    city39.hotlineNumber = @"(912) 629-8888";
    
    Cities *city40 = [Cities new];
    city40.cityName = @"St. Marys";
    city40.shelterName = @"Camden Community Crisis Center, Inc";
    city40.hotlineNumber = @"(912) 882-7858";
    
    Cities *city41 = [Cities new];
    city41.cityName = @"Statesboro";
    city41.shelterName = @"Citizens Against Violence, Inc.";
    city41.hotlineNumber = @"(912) 764-4605";
    
    Cities *city42 = [Cities new];
    city42.cityName = @"Thomasville";
    city42.shelterName = @"Halcyon Home, Inc.";
    city42.hotlineNumber = @"(229) 226-6666";
    
    Cities *city43 = [Cities new];
    city43.cityName = @"Tifton";
    city43.shelterName = @"Tifton Judicial Circuit Shelter, Inc. (Ruth's Cottage)";
    city43.hotlineNumber = @"(229) 387-9664";
    
    Cities *city44 = [Cities new];
    city44.cityName = @"Troup";
    city44.shelterName = @"Harmony House, Inc.";
    city44.hotlineNumber = @"(706) 885-1525";

    Cities *city45 = [Cities new];
    city45.cityName = @"Valdosta";
    city45.shelterName = @"Battered Women's Shelter, Inc. (The Haven)";
    city45.hotlineNumber = @"(229) 244-1765";
    
    Cities *city46 = [Cities new];
    city46.cityName = @"Vidalia";
    city46.shelterName = @"The Refuge Domestic Violence Shelter, Inc.";
    city46.hotlineNumber = @"(912) 538-9935";
    
    Cities *city47 = [Cities new];
    city47.cityName = @"Warner Robins";
    city47.shelterName = @"Warner Robins Salvation Army";
    city47.hotlineNumber = @"(478) 923-6294";
    
    Cities *city48 = [Cities new];
    city48.cityName = @"Waycross";
    city48.shelterName = @"Waycross Area Shelter d/b/a Magnolia House";
    city48.hotlineNumber = @"(912) 285-5850";
    
    Cities *city49 = [Cities new];
    city49.cityName = @"Winder";
    city49.shelterName = @"Peace Place, Inc.";
    city49.hotlineNumber = @"(770) 586-0927";
    
    cities = [NSArray arrayWithObjects:city0, city1, city2, city3, city4, city5, city6, city7, city8, city9, city10, city11, city12, city13, city14, city15, city16, city17, city18, city19, city20, city21, city22, city23, city24, city25, city26, city27, city28, city29, city30, city31, city32, city33, city34, city35, city36, city37, city38, city39, city40, city41, city42, city43, city44, city45, city46, city47, city48, city49, nil];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchResults count];
    } else {
        return [cities count];
    }
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ShelterSearchTableViewCell";
    ShelterSearchTableViewCell *cell =(ShelterSearchTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    
    if (cell == nil) {
        cell = [[ShelterSearchTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    Cities *city = nil;
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        city = [searchResults objectAtIndex:indexPath.row];
    } else {
        city = [cities objectAtIndex:indexPath.row];
    }
    
    
    cell.cityLabel.text = city.cityName;
    cell.shelterLabel.text = city.shelterName;
    cell.hotlineNumber.text = city.hotlineNumber;
  
    return cell;
}

- (void) filterContentForSearchText: (NSString*)searchText scope:(NSString*)scope
{
    
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"cityName contains[c] %@", searchText];
    searchResults = [cities filteredArrayUsingPredicate:resultPredicate];
    
}

- (BOOL) searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    
    [self filterContentForSearchText:searchString scope:[[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    
    return YES;
    
}


@end
