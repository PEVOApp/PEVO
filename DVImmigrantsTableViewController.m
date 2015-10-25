//
//  DVImmigrantsTableViewController.m
//  Pevo
//
//  Created by Alicia MacBook Pro on 10/7/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "DVImmigrantsTableViewController.h"
#import "SWRevealViewController.h"
#import "DVImmigrantsViewController.h"
#import "DVImmigrants.h"

@interface DVImmigrantsTableViewController ()

@end

@implementation DVImmigrantsTableViewController
{
    NSArray *Immigrant;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);

    DVImmigrants *PPImmigrant0 = [DVImmigrants new];
    PPImmigrant0.immigrantTitle = NSLocalizedString(@"What is VAWA?", @"PPImmigrant0");
    PPImmigrant0.immigrantDetail =  NSLocalizedString(@"VAWA is the acronym for the Violence Against Women Act, which was passed by Congress in 1994.  Among other things, VAWA created special provisions in United States immigration law to protect victims of abuse who are not citizens of the United States.  In cases of domestic violence, US immigration law allows certain victims of abuse who are not citizens to obtain lawful status without having to rely on their abuser to petition. \n\nNormally, if you are a spouse, child or parent of a US citizen (USC) or a spouse or child of a legal permanent resident (LPR) and you want to obtain lawful permanent resident status (commonly referred to as having a green card), the USC or LPR has to file a petition with the United States Citizenship and Immigration Service (USCIS) and may need to go with you to an interview with Immigration authorities. \n\nAlso, if your marriage is less than two years old when you obtain your LPR status, you would normally get what is called conditional permanent residence, (commonly known as a conditional green card).  Your spouse would then normally need to file a joint petition with you to remove the “condition” so that you can obtain full lawful permanent residence. \n\nHowever, in relationships of domestic violence, these requirements for the USC or LPR’s participation are often used by an abuser as a form of abuse, gaining power and control over the immigration status of the victim.  Therefore, US immigration law allows certain noncitizen victims of abuse to get legal status on their own without involving the abuser to file anything for the victim.", @"PPImmigrant0");
    
    DVImmigrants *PPImmigrant1 = [DVImmigrants new];
    PPImmigrant1.immigrantTitle = NSLocalizedString(@"If I am a victim of abuse, are there protections available for me under Violence Against Women Act - VAWA?", @"PPImmigrant1");
    PPImmigrant1.immigrantDetail =  NSLocalizedString(@"VAWA self-petition You may be eligible to self-petition for lawful permanent residence without the assistance of the abuser if you are abused by: \n\nyour US citizen (USC) or legal permanent resident (LPR) spouse (or if that spouse has abused your child); \n\nyour USC or LPR parent (including a step-parent); or \n\nyour USC adult son or daughter (not an LPR son or daughter).* \n\nBattered spouse or child waiver\n\nYou may be able to apply for a “battered spouse or child waiver” if you have conditional legal permanent residence as a spouse (and in certain circumstances as a child) of a USC or LPR, and the USC or LPR has abused you.  With a battered spouse or child waiver, the abuser does not have to file the joint petition with you.**VAWA cancellation of removal \n\nIf you are in removal proceedings (formerly known as deportation proceedings) before an immigration judge, and you are abused by your USC or LPR spouse or parent (or you have a child with the USC or LPR who is abused by him/her), it might be possible to apply for “VAWA cancellation of removal.”***  However, because in order to be eligible to apply for VAWA cancellation of removal you have to be in removal proceedings, it is extremely important that you have an immigration attorney with experience in VAWA to advise you and represent you. \n\nCan men qualify for VAWA? \n\nYes.  Even though the law has the word “women” in the title, abused men may also apply for relief under VAWA as long as they meet the eligibility requirements. \n\n* INA § 204(a)(1)(A) & (B) \n\n** INA § 216(c)(4)(C) \n\n*** INA § 240A(b)(2)", @"PPImmigrant1");
    
    DVImmigrants *PPImmigrant2 = [DVImmigrants new];
    PPImmigrant2.immigrantTitle = NSLocalizedString(@"What is U visa status?", @"PPImmigrant2");
    PPImmigrant2.immigrantDetail =  NSLocalizedString(@"U visa status (also known as U nonimmigrant status) was created by the Victims of Trafficking and Violence Protection Act of 2000.*  It is designed to provide lawful status to noncitizen crime victims who are assisting or are willing to assist the authorities in investigating crimes. \n\nThe U visa status may be available to victims of domestic violence crimes or victims of certain other crimes (which can be crimes that have nothing to do with domestic violence). \n\nIf you are a noncitizen victim of crime, you must meet ALL of these requirements: \n\n1. you have a certification from law enforcement or another certifying agency that you have been helpful, are helpful, or are likely to be helpful in the investigation or prosecution of one of the categories of crimes listed in the U visa statute; \n\n2. you can show that you suffered substantial physical or mental abuse from the crime certified; \n\n3. you can show that you have information regarding the criminal activity, usually explained in the certification; and \n\n4. the criminal activity violated U.S. law; or occurred in the U.S. (including Indian [Native American] country and military installations) or the territories and possessions of the U.S., also usually explained in the certification. \n\nU visa applicants also must show that they are admissible or that they qualify for a waiver of inadmissibility if they are not.", @"PPImmigrant2");
    
    DVImmigrants *PPImmigrant3 = [DVImmigrants new];
    PPImmigrant3.immigrantTitle = NSLocalizedString(@"What is a principal applicant? What is a derivative?", @"PPImmigrant3");
    PPImmigrant3.immigrantDetail =  NSLocalizedString(@"A principal applicant is the person who applies for an immigration benefit, such as U visa status. \n\nA derivative is another person (usually a family member) who may also receive lawful status through the principal applicant’s status.  Since the family member’s status is derived from the principal applicant’s status, the family member is known as a derivative under immigration law.  Although U visa derivatives do not have to meet all of the eligibility requirements for principal U visa applicants, they do have to show they are admissible or they have to file a waiver if they are inadmissible.", @"PPImmigrant3");
    
    
    DVImmigrants *PPImmigrant4 = [DVImmigrants new];
    PPImmigrant4.immigrantTitle = NSLocalizedString(@"Can men qualify for VAWA?", @"PPImmigrant4");
    PPImmigrant4.immigrantDetail =  NSLocalizedString(@"Yes.  Even though the law has the word women in the title, abused men may also apply for relief under VAWA as long as they meet the eligibility requirements.", @"PPImmigrant4");

    
    DVImmigrants *PPImmigrant5 = [DVImmigrants new];
    PPImmigrant5.immigrantTitle = NSLocalizedString(@"What is a VAWA self-petition?", @"PPImmigrant5");
    PPImmigrant5.immigrantDetail =  NSLocalizedString(@"A self-petition is a way to apply for lawful status in the US on your own by submitting an application to the US Citizenship and Immigration Service USCIS requesting lawful status in the US without the assistance of the abuser. This application is called a self-petition because you are applying for legal status by yourself and you are not sponsored by anyone.  You may be eligible to self-petition for lawful permanent residence without the assistance of the abuser if you are abused by: \n\nyour spouse and he or she is US citizen (USC) or legal permanent resident LPR or if you are the spouse of a USC or LPR and he or she has abused your child, \n\na USC or LPR parent including a step-parent, or \n\na USC adult son or daughter not LPR son or daughter.* \n\nNote: Please continue on to the next question Who is eligible to self-petition? because these categories are explained in more detail. \n\nTo determine if you qualify for a VAWA self-petition or another form of immigration relief, you should consult an immigration lawyer with experience in VAWA. \n\n* INA § 204(a)(1)(A) & (B)", @"PPImmigrant5");
    
    DVImmigrants *PPImmigrant6 = [DVImmigrants new];
    PPImmigrant6.immigrantTitle = NSLocalizedString(@"Who is eligible to self-petition?", @"PPImmigrant6");
    PPImmigrant6.immigrantDetail =  NSLocalizedString(@"Immigration law allows the following relatives of abusive US citizens USC and legal permanent residents LPR to self-petition for lawful status in the US (if they meet all other self-petitioning requirements under VAWA): \n\nAbused spouses of a USC or LPR, and the abused spouse’s children if they are under 21 years old and unmarried the children would be included in the spouse's application as derivatives;* \n\nNon-abused spouses of a USC or LPR if the USC or LPR spouse has abused your unmarried and under 21 child. The non-abused spouse’s children who are under 21 years old and unmarried may also be eligible the children would be included in the spouse's application as derivatives;* \n\nAbused children under 21 years old and unmarried of a USC or LPR, and their children under 21 years old and unmarried as derivatives.** \n\nNote: It may be possible for an abused child between the ages of 21 and 25 to self-petition if he or she can show he or she qualified when she was under 21 and the abuse was at least one central reason for the delay in filing.*** \n\nAbused parents of a USC not LPR son or daughter son and or daughter must be over 21 years old.**** \n\nNote: In the following questions, you will find information about additional requirements for each of the above categories. It is important that you read these to fully understand what you may have to prove to qualify. \n\n* INA § 204(a)(1)(A)(iii), INA § 204 (a)(1)(B)(ii) \n\n** INA § 204(a)(1)(A)(iv), INA § 204(a)(1)(B)(iii) \n\n*** INA § 204(a)(1)(D)(v) \n\n**** INA § 204(a)(1)(A)(vii)", @"PPImmigrant6");
    
    DVImmigrants *PPImmigrant7 = [DVImmigrants new];
    PPImmigrant7.immigrantTitle = NSLocalizedString(@"Does a common-law marriage count as being married to the abuser for immigration purposes?", @"PPImmigrant7");
    PPImmigrant7.immigrantDetail =  NSLocalizedString(@"In addition to meeting the abusive relationship requirement explained in Who is eligible to self-petition? you must meet all additional requirements listed below if you are self-petitioning as the spouse of an abusive US citizen (USC) or legal permanent resident LPR:Battery or extreme cruelty: During your marriage, your USC or LPR spouse must have battered physically abused you or your child or subjected you or your child to extreme cruelty.*1  Extreme cruelty is any form of power and control, including but not limited to, the following: \n\nbeing a victim of any act or threatened act of violence, including any forcible detention that results in physical or mental harm, psychological or sexual abuse, rape, molestation, incest, forced prostitution, and acts that may not appear violent but are part of a pattern of violence.*2  Note: You must have been abused in the United States, or if you were solely abused abroad, then your spouse must have been an employee of the US government or a member of the US uniformed services the military.*3 \n\nYou must have lived with the abuser at some point ;*4 and \n\nYou are a person of “good moral character.”*5  Note: Even if you believe you have committed an act which may affect your ability to prove good moral character for example, certain crimes, please talk to an immigration lawyer with experience in VAWA to see if there is an exception available for your situation. \n\n*1 INA § 204(a)(1)(A)(iii)(I)(bb), INA § 204(a)(1)(B)(ii)(I)(bb) \n\n*2 8 CFR § 204.2(c)(1)(vi) \n\n*3 INA § 204(a)(1)(A)(v), INA § 204(a)(1)(B)(iv) \n\n*4 INA § 204(a)(1)(A)(iii)(II)(dd), INA § 204(a)(1)(B)(ii)(II)(dd) \n\n*5 INA § 204(a)(1)(A)(iii)(II)(bb), INA § 204(a)(1)(B)(ii)(bb)", @"PPImmigrant7");
    
    DVImmigrants *PPImmigrant8 = [DVImmigrants new];
    PPImmigrant8.immigrantTitle = NSLocalizedString(@"What is conditional permanent residence status? How do I know if I have it?", @"PPImmigrant8");
    PPImmigrant8.immigrantDetail =  NSLocalizedString(@"To understand the battered spouse or child waiver, it is necessary to understand what conditional permanent residence is.  If you get legal permanent residence status a green card through marriage to a USC or LPR, and the marriage is less than two years old when you obtain your residence, then you will obtain conditional permanent residence.  Also, If your children received conditional residence through a petition filed by your spouse, then they will obtain conditional permanent residence as well.*  The reason why the US Citizenship and Immigration Services USCIS gives conditional permanent residence when a marriage is less than two years old and then requires a joint petition or waiver to remove the condition later on is to prevent marriage fraud. \n\nOne way to determine if you have conditional legal permanent residence may be to look at the expiration date of your green card.  A conditional permanent resident will receive a green card that is valid for 2 years. \n\n* INA §§ 216(a)(1), 216(g)", @"PPImmigrant8");
    
    DVImmigrants *PPImmigrant9 = [DVImmigrants new];
    PPImmigrant9.immigrantTitle = NSLocalizedString(@"Who is eligible for a battered spouse or child waiver?", @"PPImmigrant9");
    PPImmigrant9.immigrantDetail =  NSLocalizedString(@"You may be eligible for a battered spouse or child waiver if you meet all of the requirements below: \n\nyou have conditional legal permanent residence as the spouse of a US citizen (USC) or legal permanent resident LPR because your marriage was less than two years old when you obtained your residence; or you have conditional legal permanent residence as a child because your parent’s USC spouse filed a petition for you and the marriage was less than two years old when you obtained your residence; \n\nthe marriage that is the basis for conditional residence was a good faith marriage; and \n\nduring the marriage, the spouse or child was battered or subjected to extreme cruelty by the USC or LPR abuser.*  Extreme cruelty is any form of power and control and includes, but is not limited, to the following: being the victim of or threatened with an act of violence, forcible detention that results in physical or mental harm, psychological or sexual abuse, rape, molestation, incest, and forced prostitution.** \n\n* INA § 216(c)(4)(C) \n\n** 8 CFR § 216.5(e)(3)(i)", @"PPImmigrant9");
    
    DVImmigrants *PPImmigrant10 = [DVImmigrants new];
    PPImmigrant10.immigrantTitle = NSLocalizedString(@"How does the battered spouse or child waiver process work?", @"PPImmigrant10");
    PPImmigrant10.immigrantDetail =  NSLocalizedString(@"Once the battered spouse or child waiver is submitted, US Citizenship and Immigration Services (USCIS) may request additional evidence.  If the battered spouse or child waiver is approved, the condition in your conditional permanent residence will be removed.  Note: If you are a conditional permanent resident through a marriage to an abusive USC or LPR, and you do not file a joint petition or a waiver before the end of the second anniversary of the date when you got conditional permanent residence, you may lose your permanent residence status and could be removed (deported) from the US.", @"PPImmigrant10");
    
    DVImmigrants *PPImmigrant11 = [DVImmigrants new];
    PPImmigrant11.immigrantTitle = NSLocalizedString(@"If the battered spouse or child waiver is approved, what will my immigration status be?", @"PPImmigrant11");
    PPImmigrant11.immigrantDetail =  NSLocalizedString(@"If the battered spouse or child waiver is approved, the condition in your conditional permanent residence will be removed.*  That means you will have legal permanent residence and you will be able to remain in the US lawfully as long as you follow relevant immigration laws.** Removing the condition in your conditional permanent residence is required so that you do not lose your permanent residence status and become removable (deportable) from the US.** \n\n* INA § 216(c)(3)(B) \n\n** INA § 216(c)(2)", @"PPImmigrant11");
    
    DVImmigrants *PPImmigrant12 = [DVImmigrants new];
    PPImmigrant12.immigrantTitle = NSLocalizedString(@"Who is eligible for VAWA cancellation of removal?", @"PPImmigrant12");
    PPImmigrant12.immigrantDetail =  NSLocalizedString(@"You may be eligible to apply for cancellation of removal if you fall under one of the following categories and meet all other requirements for cancellation of removal: \n\nYou have been battered or suffered extreme cruelty by a spouse who is/was a USC or LPR; \n\nYou have been battered or suffered extreme cruelty by a parent who is/was a USC or LPR; \n\nYou and a USC or LPR have a child together and the child has been battered or suffered extreme cruelty by the USC or LPR parent;* or \n\nYou have been battered or suffered extreme cruelty by a person who is a USC or LPR who you thought you had married, but the marriage is not legitimate because the USC or LPR committed bigamy (was already married at the time).** \n\n* INA §§ 240A(b)(2)(A)(i)(I)&(II) \n\n** INA § 240A(b)(2)(A)(i)(III)", @"PPImmigrant12");

    
    Immigrant = [NSArray arrayWithObjects:PPImmigrant0, PPImmigrant1, PPImmigrant2, PPImmigrant3, PPImmigrant4, PPImmigrant5, PPImmigrant6, PPImmigrant7, PPImmigrant8, PPImmigrant9, PPImmigrant10, PPImmigrant11, PPImmigrant12, nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [Immigrant count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    DVImmigrants *info = [Immigrant objectAtIndex:indexPath.row];
    cell.textLabel.text = info.immigrantTitle;
    cell.textLabel.numberOfLines=0;
    cell.textLabel.font=[UIFont fontWithName:@"Georgia-Bold" size:14];
    
    
    return cell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ImmigrantSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DVImmigrantsViewController *ImmigrantController = segue.destinationViewController;
        ImmigrantController.PPImmigrant = [Immigrant objectAtIndex:indexPath.row];
    }
}



@end
