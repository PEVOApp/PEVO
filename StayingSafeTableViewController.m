//
//  StayingSafeTableViewController.m
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/21/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "StayingSafeTableViewController.h"
#import "StayingSafeViewController.h"
#import "SWRevealViewController.h"
#import "StayingSafe.h"


@interface StayingSafeTableViewController ()

@end

@implementation StayingSafeTableViewController

{
    NSArray *stayingSafe;
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

    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    //_sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
        
    StayingSafe *safe1 = [StayingSafe new];
    safe1.stayingSafeTitle = NSLocalizedString(@"Safety with an Abuser", @"safeTitle1");
    safe1.stayingSafeDetail =  NSLocalizedString(@"No one deserves to be abused.  Our hope is that if you are being abused, you will be able to find a way to safely get out of the abusive relationship.  However, the reality is that for many different reasons, some victims are not able to leave an abusive relationship once the abuse begins.  If you're in a physically abusive relationship, please consider the following tips to help try to keep you and your children safe until the time comes when you are able to leave.  \n \nFollowing these suggestions (often known as a safety plan) can't guarantee your safety, but it could help make you safer.  However, it is important that you create a safety plan that it right for you.  Not all of these suggestions will work for everyone, and some could even place you in greater danger.  You have to do what you think is best to keep yourself and your children safe.", @"safeDetail1");
    
    StayingSafe *safe2 = [StayingSafe new];
    safe2.stayingSafeTitle = NSLocalizedString(@"Safety with an Abuser - During the violence", @"safeTitle2");
    safe2.stayingSafeDetail =  NSLocalizedString(@"The abuser may have patterns to his/her abuse.  Try to be aware of any signs that show s/he's about to become violent so that you can assess how dangerous the situation may be for you and your children. \n \nIf it looks like violence may happen, try to remove yourself and your children from the situation before the violence begins if you can.  \n \nBe aware of anything the abuser can use as a weapon.  If you can, try and keep any sharp or heavy objects that s/he may use to hurt you, like a hammer or an ice pick, out of the way. \n \nKnow where guns, knives, and other weapons are.  If you can, lock them up or make them as hard to get to as you can. \n \nFigure out where the SAFE PLACES are in your home – the places where there aren't weapons.  If it looks like the abuser is about to hurt you, try to get to a safe place.  Stay out of the kitchen, garage, or workshop.  Try to avoid rooms with tile or hardwood floors.  \n \nIf the abuser does start to harm you, don't run to where the children are; the abuser may hurt them too.  \n \nIf there's no way to escape the violence at that moment, make yourself a small target.  Dive into a corner and curl up into a ball.  Protect your face and put your arms around each side of your head, wrapping your fingers together.  \n \nTry not to wear scarves or long jewelry.  The abuser could use these things to strangle you.", @"safeDetail2");
    
    StayingSafe *safe3 = [StayingSafe new];
    safe3.stayingSafeTitle = NSLocalizedString(@"Safety with an Abuser - What to tell your children", @"safeDetail3");
    safe3.stayingSafeDetail =  NSLocalizedString(@"Create a plan with your children for when violence happens.  Tell them not to get involved if the abuser is hurting you since that may get them hurt.  Decide on a code word to let them know that they should leave the house and get help.  If the abuser won’t let them leave the house safely, figure out with them where would be a safe place for them to go within the house where they can call for help (such as a room with a lock and a phone).  Make sure they know that their first priority is to stay safe, not to physically protect you.  \n \nPractice different ways to get out of your house safely. Practice with your children as well.  \n \nPlan for what you will do if your children tell your partner about your plan or if your partner finds out about your plan some other way.  \n \nTell your children that violence is never right, even when someone they love is being violent.  Tell them that the violence isn't their fault or your fault.  Tell them that when anyone is being violent, it is important to keep safe.", @"safeDetail3");
    StayingSafe *safe4 = [StayingSafe new];
    safe4.stayingSafeTitle = NSLocalizedString(@"Safety with an Abuser - Ways to get help", @"safeTitle4");
    safe4.stayingSafeDetail =  NSLocalizedString(@"If you need help in a public place, yell FIRE! People respond more quickly to someone yelling FIRE than to any other cry for help. \n \nIf you can, always have a phone where you know you can get to it.  Know the numbers to call for help such as 911 or the National Domestic Violence Hotline at 1-800-799-SAFE (7233).  Know where the nearest pay phone is in case you have to run out of the home without your cell phone.  Know your local battered women's shelter number.  \n \nLet friends and neighbors who you trust know what is going on in your home.  Make a plan with them so that they know when you need help and so they know what to do (such as calling the police or banging on your door).  Make up a signal with your neighbors, like flashing the lights on and off or hanging something out the window, which will alert them that you need help.  \n \nMake a habit of backing the car into the driveway (so you can quickly pull out) and having a full tank of gas.  Keep your car keys in the same place so you can easily grab them.  If you would be leaving by yourself (if you don’t have children), you might want to even keep the driver's door unlocked (and the other car doors locked) so that you are prepared to make a quick escape if you have to.  \n \nKeep a copy of important papers with you or in your car, such as your and your children’s birth certificates, passports, immigration papers, and Social Security cards, in case you have to leave in a hurry.  \n \nIf you can, call a domestic violence hotline from time to time to discuss your options and to talk to someone who understands you, even if you feel that you are not ready to leave.  One number you can call is the National Domestic Violence Hotline at 1-800-799-SAFE. \n \nThink of several reasons for leaving the house at different times of the day or night that the abuser will believe, in case you feel that the violence is about to erupt and you need an excuse to get out.", @"safeDetail4");
    StayingSafe *safe5 = [StayingSafe new];
    safe5.stayingSafeTitle = NSLocalizedString(@"Getting ready to leave Part 1", @"safeTitle5");
    safe5.stayingSafeDetail = NSLocalizedString(@"Make a plan for how you are going to leave, including where you’re going to go, and how to cover your tracks. \n \nMake one plan for if you have time to prepare to leave the home. Make another plan for if you have to leave the home in a hurry. \n \nIf you can, keep any evidence of the physical abuse and take it with you when you leave. Make sure to keep this evidence in a safe place that the abuser will not find – this may mean that you have to keep it in a locked drawer at work or with a trusted family member. If the abuser finds it, you could be in more danger. Such evidence of physical abuse might include: \n \nPictures you have of bruises or other injuries. If possible, try to have these pictures dated; \n \nTorn or bloody clothing; \n \nHousehold objects that the abuser damaged or broke during a violent episode; \n \nPictures that show your home destroyed or messed up after violence happened; \n \nAny records you have from doctors or the police that document the abuse; \n \nWhenever you are hurt, go to a doctor or to an emergency room as soon as possible if you can. Tell them what happened. Ask them to make a record of your visit and of what happened to you. Be sure to get a copy of the record. \n \nA journal that you may have kept with details about the abuse, which could help prove the abuse in court. \n \nAnything else you think could help show that you’ve been abused.", @"safeDetail5");
    
    StayingSafe *safe6 = [StayingSafe new];
    safe6.stayingSafeTitle = NSLocalizedString(@"Getting ready to leave Part 2", @"safeTitle6");
    safe6.stayingSafeDetail = NSLocalizedString(@"Get a bag together that you can easily grab when you leave.  Some things to include in the bag are: \n \nSpare car keys; \n \nYour driver's license; A list of your credit cards so that you can track any activity on them; \n \nYour checkbook; \n \nMoney; \n \nPhone numbers for friends, relatives, doctors, schools, taxi services, and your local domestic violence organization; \n \nA change of clothing for you and your children; \n \nAny medication that you or your children usually take; Copies of your children's birth certificates, social security cards, school records and immunizations; \n \nCopies of legal documents for you and the abuser, such as social security cards, passports, green cards, medical records, insurance information, birth certificates, marriage license, wills, welfare identification information and copies of any court orders (such as your protection order or custody order); \n \nCopies of financial documents for you and the abuser, such as pay stubs, bank account information, a list of credit cards you hold by yourself or together with the abuser; \n \nAny evidence you've been collecting to show that you've been abused; \n \nand A few things you want to keep, like photographs, jewelry or other personal items. \n \nHide this bag somewhere the abuser will not find it.  Try to keep it at a trusted friend or neighbor's house.  Avoid using next-door neighbors, close family members, or mutual friends, as the abuser might be more likely to find it there.  If you're in an emergency and need to get out right away, don't worry about gathering these things.  While they're helpful to have, getting out safely should come first.", @"safeDetail6");
    
    StayingSafe *safe7 = [StayingSafe new];
    safe7.stayingSafeTitle = NSLocalizedString(@"Getting ready to leave Part 3", @"safeTitle7");
    safe7.stayingSafeDetail =  NSLocalizedString(@"Hide an extra set of car keys in a place you can get to easily in case the abuser takes the car keys to prevent you from leaving. \n \nTry to set money aside.  If the abuser controls the household money, this might mean that you can only save a few dollars per week; the most important thing is that you save whatever amount you can that will not tip off the abuser and put you in further danger.  You can ask trusted friends or family members to hold money for you so that the abuser cannot find it and/or use it.  \n \nIf you are not employed, try to get job skills by taking classes at a community college or a vocational school if you can.  This will help you to get a job either before or after you leave so that you won't need to be financially dependent on the abuser.  \n \nGetting a protective order can be an important part of a safety plan when preparing to leave.  Even if you get a protective order, you should still take other safety planning steps to keep yourself and your children safe.  A legal protective order is not always enough to keep you safe.  Locate your state in our Know the Laws section to find out more information about getting a protective order. \n \nLeave when the abuser will least expect it.  This will give you more time to get away before the abuser realizes that you are gone. \n \nIf you have time to call the police before leaving, you can ask the police to escort you out of the house as you leave.  You can also ask them to be ON CALL while you're leaving, in case you need help.", @"safeDetail7");
    
    StayingSafe *safe8 = [StayingSafe new];
    safe8.stayingSafeTitle = NSLocalizedString(@"Getting ready to leave - Taking your children with you", @"safeTitle8");
    safe8.stayingSafeDetail =  NSLocalizedString(@"If you plan on taking your children with you when you leave, it is generally best to talk to a lawyer who specializes in domestic violence and custody issues beforehand to make sure that you are not in danger of violating any court custody order you may have or any criminal parental kidnapping laws.  This is especially true if you want to leave the state with the children.  \n \nIf you are considering leaving without your children, please talk to a lawyer who specializes in custody before doing this.  Leaving your children with an abuser may negatively affect your chances of getting custody of them in court later on.", @"safeDetail8");
    
    StayingSafe *safe9 = [StayingSafe new];
    safe9.stayingSafeTitle = NSLocalizedString(@"Getting ready to leave - After you've left", @"safeTitle9");
    safe9.stayingSafeDetail =  NSLocalizedString(@"If you are fleeing to a confidential location and you fear that the abuser will come look for you, you might want to create a false trail AFTER you leave.  \n \nYou could call motels, real estate agencies, schools etc. in a town at least six hours away from where you plan to go.  \n \nAsk them questions that will require them to call you back.  Give them your old phone number (the number at the home you shared with the abuser, not the number to the place you are going).  \n \nHowever, do NOT make these phone calls before you leave.  If anyone calls you back while you are still with the abuser, or if the abuser is able to check your phone to see what numbers you have called, the abuser would be tipped off that you are preparing to leave, which could put you in great danger.", @"safeDetail9");
    
    
    StayingSafe *safe10 = [StayingSafe new];
    safe10.stayingSafeTitle = NSLocalizedString(@"Ending the Abusive Relationship", @"safeTitle10");
    safe10.stayingSafeDetail =  NSLocalizedString(@"No one deserves to be abused.  If you are reading this page, you have likely already taken steps to end the abusive relationship.  Unfortunately, the risk of danger does not always end after you've left an abuser.  Ending an abusive relationship comes with a different set of dangers, and you still need to take steps to keep yourself safe.  \n \nFollowing these suggestions (often known as a safety plan) can't guarantee your safety, but it could help make you safer.  However, it is important that you create a safety plan that is right for you.  Not all of these suggestions will work for everyone, and some could even place you in greater danger.  You have to do what you think is best to keep yourself and your children safe.", @"safeDetail10");
    
    
    StayingSafe *safe11 = [StayingSafe new];
    safe11.stayingSafeTitle = NSLocalizedString(@"Ending the Abusive Relationship - Steps to take if the abuser has permanently moved out of your home Part 1", @"safeTitle11");
    safe11.stayingSafeDetail =  NSLocalizedString(@"Here are some suggestions to try to help keep you safe if the abuser has permanently moved out of your home – he may have left willingly or, more likely, due to a restraining order.  \n \nChange your locks so he can’t enter the home with his key – even if he left his key with you, he may have other copies that you don’t know about.  If you rent your home, you may have to talk to your landlord first before changing the lock.  \n \nPut dead bolt locks on your door.  If you can, replace any wood doors with steel or metal doors.  If you rent your home, be sure to talk to your landlord first before changing the doors.  \n \nIf you have the money, think about installing a security system. \n \nTry to make sure that the outside of your house is well-lit.  Think about getting a lighting system that lights up when a person is coming close to the house (i.e. motion-sensitive lights).  \n \nKeep bushes, trees, and other plants around your house well-trimmed.  That way, you'll be able to see if someone approaches your home.   Trimmed bushes would also make it harder for the abuser to hide in the bushes without being seen by a passerby or neighbor.  \n \nChange your phone number.  Ask the telephone company to make your new number unlisted in the phonebook.  \n \nCall the telephone company to request caller ID and to block unlisted calls so that you can see the number of anyone who calls you.  Ask that your phone number be blocked so that if you call someone else no one will learn your new, unlisted phone number.  \n \nIf you can, change the hours that you work.  \n \nWhen you're taking the children to school, take different routes. Avoid the route you took when you and the abuser were together.  \n \nExplain your situation to anyone who takes care of your children or anyone who picks them up from school.  If the abuser is not allowed to be near the children, let these people know this and even give them a copy of your restraining order.  \n \nTake a different route to the grocery store, bank, restaurants, and any other place you go on a regular basis or find new ones to go to if you can.  \n \nTry not to travel alone.  Stay in public, well-lit places as much as you can.  \n \nAvoid walking or jogging alone.  \n \nKeep a certified copy of your restraining order with you at all times, if you have one.", @"safeDetail11");
    
    
    StayingSafe *safe12 = [StayingSafe new];
    safe12.stayingSafeTitle = NSLocalizedString(@"Ending the Abusive Relationship - Steps to take if the abuser has permanently moved out of your home Part 2", @"safeTitle12");
    safe12.stayingSafeDetail =  NSLocalizedString(@"Let friends, neighbors and employers know that you have a restraining order in effect and to let you know if they see the abuser around your home or work.  Give them a picture of him if they don’t know what he looks like.  \n \nGive copies of your restraining order to your neighbors, employers and your children's schools.  Also give them a picture of the abuser.  \n \nIf you feel that it would not negatively affect your job, you might want to tell people you work with about the situation.  See if a receptionist or someone else can screen your calls.  \n \nRemember that you can call law enforcement if the abuser violates your restraining order.  If you don’t have a restraining order, you can still call the police if the abuser comes to your home uninvited.  \n \nCarry a cell phone if you can, but don't completely depend on this phone.  Cell phones may not get good service in some places, and batteries do run out.  Ask your local domestic violence organization if they give out cell phones – if so, get one as a backup to the cell phone that you already have.  Have emergency numbers like 911 on speed dial.  \n \nIf you need help in a public place, yell FIRE!!! People respond more quickly to someone yelling FIRE!! than to any other cry for help.  \n \nStay in touch with your local domestic violence organization for support.  \n \nGet a full check-up with your doctor to see if you need any medical treatment.  Keep in mind that the abuser may not have been faithful and so you may want to get tested for sexually transmitted diseases.", @"safeDetail12");
    
    
    StayingSafe *safe13 = [StayingSafe new];
    safe13.stayingSafeTitle = NSLocalizedString(@"Ending the Abusive Relationship - Steps to take if you have left the abuser and relocated to a confidential location Part 1", @"safeTitle13");
    safe13.stayingSafeDetail =  NSLocalizedString(@"Here are some suggestions to try to help keep you safe and to prevent the abuser from learning where you live if you've moved to a confidential location. \n \nWhenever you have to give out your address (such as at a doctor’s office or with a magazine subscription), use an address that's different from the one where you're actually living.  For example, think about renting a P.O. Box from your post office or ask a friend if you can use her address.  \n \nBe aware that addresses can be listed on restraining orders and police reports.  Before filling out your new address on any forms, ask if there's any way to keep your address confidential.  If not, see if you can use the P.O. box or a friend’s address instead.  \n \nAsk the telephone company to make your new address and phone number unlisted in the phonebook.  \n \nCall the telephone company to request caller ID and to block unlisted calls so that you can see the number of anyone who calls you. Ask that your phone number be blocked so that if you call someone else no one will learn your new, unlisted phone number.  \n \nBe careful about ever giving out your new address and phone number.  \n \nIf you can, change the hours you work.  \n \nKeep a certified copy of your restraining order with you at all times, if you have one.  \n \nIf you have children, let their school know what is going on.  \n \nConsider changing your children's schools or, at the very least, change the route that you use to get them to school.  Drop them off at a different school entrance if possible.  \n \nReschedule appointments that you made before leaving that the abuser may know about.  \n \nTake a different route to the grocery store, bank, restaurants, and any other place you go on a regular basis or find new ones if you can.  \n \nConsider telling your new neighbors about the situation.  Make a plan with them for when you need help.  Have a signal, like flashing the lights on and off or hanging something out the window, to tell them you need help in case the abuser gets into your home and you can’t get to the phone to call 911.", @"safeDetail13");
    
    
    StayingSafe *safe14 = [StayingSafe new];
    safe14.stayingSafeTitle = NSLocalizedString(@"Ending the Abusive Relationship - Steps to take if you have left the abuser and relocated to a confidential location Part 2", @"safeTitle14");
    safe14.stayingSafeDetail =  NSLocalizedString(@"Talk to people you trust that you just left an abusive relationship so that they are on alert if they see anything suspicious around your home.  \n \nPut dead bolt locks on your doors.  If you can, replace any wood doors with steel or metal doors.  If you rent your home, be sure to talk to your landlord first before changing doors or even locks.  \n \nIf you have the money, think about installing a security system.  \n \nTry to make sure that the outside of your house is well-lit.  Think about getting a lighting system that lights up when a person is coming close to the house (i.e. motion-sensitive lights).  \n \nKeep bushes, trees, and other plants around your house well-trimmed.  That way, you'll be able to see if someone approaches your home.  Trimmed bushes would also make it harder for the abuser to hide in the bushes without being seen by a passerby or neighbor.  \n \nIf you feel that it would not negatively affect your job, you might want to tell people you work with about the situation.  See if a receptionist or someone else can screen your calls.  \n \nExplain your situation to anyone who takes care of your children or anyone who pick them up from school.  If the abuser is not allowed to be near the children, let these people know this and even give them a copy of your restraining order.  \n \nCarry a cell phone if you can, but don't completely depend on this phone.  Cell phones may not get good service in some places, and batteries do run out.  Ask your local domestic violence organization if they give out cell phones – if so, get one as a backup to the cell phone that you already have.  Have emergency numbers like 911 on speed dial.  \n \nIf you need help in a public place, yell FIRE!! People respond more quickly to someone yelling FIRE!! than to any other cry for help.  \n \nStay in touch with your local domestic violence organization and/or mental health service providers for support.  To find a domestic violence organization near you.  \n \nGet a full check-up with your doctor to see if you need medical treatment.  Keep in mind that the abuser may not have been faithful and you may want to get tested for sexually transmitted diseases.", @"safeDetail14");
    
    StayingSafe *safe15 = [StayingSafe new];
    safe15.stayingSafeTitle = NSLocalizedString(@"Safety in Rural Areas Part 1", @"safe15");
    safe15.stayingSafeDetail =  NSLocalizedString(@"Following these suggestions (often known as a safety plan) can't guarantee your safety, but it could help make you safer.  However, it is important that you create a safety plan that it right for you.  Not all of these suggestions will work for everyone, and some could even place you in greater danger.  You have to do what you think is best to keep yourself and your children safe. \n \nIf you live in a rural area or a small town, there are a few extra things to keep in mind when you're creating a safety plan.  \n \nIt may take police and sheriffs a long time to get to you.  \n \nIf you call the police, get to a safe place to wait for them to arrive.  You may want to go to a trusted friend or neighbor's house, or to a public place you think is safe.  \n \nIf you decide to leave the abuser, think about leaving your area, at least for a little while.  Think about it even if you get a protective order.  \n \nA lot of times, there aren't any buses, taxis, or other types of public transportation available near where you live, and the abuser may keep you from using the car.  If you do not have access to a car, and you need to get out of the home to stay safe, you may want to:  \n \nMake a plan with a trusted friend who can give you a ride whenever you need one.  \n \nSee if your local sheriff's office or police department can help escort you out of the home to get to a safe place.  \n \nSee if any local churches, synagogues or spiritual groups can connect you with someone (either a staff member or a parishioner) who would be willing to drive you.  \n \nTalk with a domestic violence advocate at a local organization to see if their organization can provide you with transportation when needed.  If not, the advocate may be able to help you make a plan to get a ride when you need one.", @"safeDetail15");
    
    
    StayingSafe *safe16 = [StayingSafe new];
    safe16.stayingSafeTitle = NSLocalizedString(@"Safety in Rural Areas Part 2", @"safeTitle16");
    safe16.stayingSafeDetail =  NSLocalizedString(@"If you live in a town where hunting is popular, the abuser may be more likely to have guns and other weapons in the home than an abuser who lives in a city.  Read about Federal Gun Laws and State Gun Laws. There may be legal protections you can take to have the gun taken away from the abuser. \n \nKnow where guns, knives, and other weapons are.  If you can, lock them up or make them as hard to get to as possible. \n \nFigure out SAFE PLACES in your home – the places where there aren't weapons.  If it looks like the abuser is about to hurt you, try to get to a safe place.  Stay out of the kitchen, garage, or workshop.  \n \nIf you live, work and/or spend time in isolated areas where neighbors and passersby cannot see or hear what is going on, this could increase the danger level.  \n \nTry to stay away from isolated areas whenever you can.  (We recognize that if you live or work in an isolated area, there may not be an easy way to change this.)  \n \nTravel in groups whenever possible.  If you can, have someone in charge of paying attention to safety and what's going on around you.  \n \nConsider leaving the area, at least for a little while.  Consider doing so even if you get a restraining order.  Carry a cell phone if you can, but don't count on it too much.  Cell phones may not get good service in some places, and batteries do run out.  Ask your local domestic violence organization if they give out cell phones and try to get one to have as a back-up phone.  Have emergency numbers like 911 on speed dial.  If you of low economic means, you may qualify for a free phone with free monthly minutes from the Assurance Wireless Program, sponsored by Virgin Mobile.  \n \nSafe places, like a friend's house or a shelter, may be far away.  \n \nIf you have access to a car, try to always have a full tank of gas in case you need to get to a far-away place in a hurry.  \n \nIf you live in an especially cold place, in the winter, keep cold weather clothing (like a hat, scarf, and jacket) in an easy-to-reach place for you and your children.  If you can, keep them in your car.  \n \nBe aware of where neighbors live along the road in case you ever need to pull the car over and run to a neighbor for help.  \n \nIf your community is very small, people who live in your area may know where the domestic violence shelter is.  In other words, the shelter location may not be confidential.  \n \nBe aware that the abuser and other people may know where the shelter is and so you cannot let your guard down when entering and exiting the shelter.  \n \nThink about going to a shelter outside of the area where you live, even if it's only for a little while.  \n \nIf you go to a local shelter, you may want to cover your car with protective car-cover.  This can help keep the abuser and other people from seeing your car from the street while it is parked in the parking lot.", @"safeDetail16");
    
    
    stayingSafe = [NSArray arrayWithObjects:safe1, safe2, safe3, safe4, safe5, safe6, safe7, safe8, safe9, safe10, safe11, safe12, safe13, safe14, safe15, safe16, nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [stayingSafe count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    StayingSafe *safe = [stayingSafe objectAtIndex:indexPath.row];
    cell.textLabel.text = safe.stayingSafeTitle;
    cell.textLabel.numberOfLines=0;
    cell.textLabel.font=[UIFont fontWithName:@"Georgia-Bold" size:14];

    
    // Configure the cell...
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"StayingSafeDetailSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        StayingSafeViewController *SSController = segue.destinationViewController;
        SSController.safe = [stayingSafe objectAtIndex:indexPath.row];
    }
}

@end
