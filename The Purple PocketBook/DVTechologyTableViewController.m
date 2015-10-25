//
//  DVTechologyTableViewController.m
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/21/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "DVTechologyTableViewController.h"
#import "TechSecurityViewController.h"
#import "SWRevealViewController.h"
#import "TechSecurity.h"



@interface DVTechologyTableViewController ()

@end

@implementation DVTechologyTableViewController
{
    NSArray *dvSecurity;
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
    
    TechSecurity *tech1 = [TechSecurity new];
    tech1.techTitle = NSLocalizedString(@"Internet Security", @"DVTechTitle1");
    tech1.techDetail = NSLocalizedString(@"Please note that computer use can be monitored by an abuser and there are ways for an abuser to access your email and to find out what sites you have visited on the Internet.  It is impossible to completely clear all data related to your computer activity. \n \nIf you are in danger, please use a computer that the abuser cannot access (such as a public terminal at a library, community center, or domestic violence organization), and call your local domestic violence organization and/or the National Domestic Violence Hotline at 1-800-799-SAFE for help.", @"DVTechDetail1");
    
    TechSecurity *tech2 = [TechSecurity new];
    tech2.techTitle = NSLocalizedString(@"Email Security - Can the abuser access my email account?", @"DVTechTitle2");
    tech2.techDetail = NSLocalizedString(@"Maybe.  There are a number of ways the abuser could have access to your email account: \n \nIf you share an email account with the abuser, he will be able to read any of the emails in your account.  \n \nIf you use a Web-based email program like Gmail or Yahoo, your email account may be visible to someone who visits those websites on your computer unless you properly log out.  Just closing your browser is not enough - you must first log out of your account to make sure that when the abuser goes to the email programs website, your personal account information won’t be on the screen.  \n \nIf you use of one these Web-based email programs, the abuser may be able to access your email account if he knows your email address and password.  Note: some people's computers save their email address and password for them.  If your computer has your email address and password saved, anyone with access to your computer can read your email.  \n \nIf you use a computer-based email program like Outlook, Outlook Express, Eudora or Apple Mail, anybody who has access to your computer can read your email.  \n \nIf the abuser knows your email address, remember to not open any email attachments sent from the abuser or to reply to an email sent by the abuser using your new email account, as these actions may let the abuser install spyware on your computer and track your email messages.  \n \nMost computers now have a function called AUTOCOMPLETE, which stores information you've typed on your computer in the past.  For example, if AutoComplete is turned on, when you go to type something into a search engine such as Google, a pop-up box will appear and list the things you've searched for in the past.  (You may also see this pop-up box when entering your credit card information or your address into an online form.)  If you have AutoComplete turned on, the abuser may be able to access your email account even if you haven't told him your email address or password.  \n \nIf you're not sure whether the abuser has access to your email account, for your safety it's best to act like he does, and avoid sending emails you wouldn't want him to see.", @"DVTechDetail2");
    
    TechSecurity *tech3 = [TechSecurity new];
    tech3.techTitle = NSLocalizedString(@"Email Security - What safety steps should I take even if I think the abuser does NOT have access to my email account?", @"DVTechTitle3");
    tech3.techDetail = NSLocalizedString(@"If you believe that the abuse does NOT have access to your email account, here are a few steps that you may want to take anyway, to try to keep your email account secure:  \n \nMake sure you have a password the abuser will not be able to guess.  Pick a password that does not contain obvious information (such as your name, birthday, social security number, pet's name, etc.), which the abuser could guess.  It may also be a good idea to change your password regularly.  If you are not sure how to change the password on your email account, you can likely find that information by going to HELP or question.  \n \nDo not write your password down.  Make sure you change your computer settings so that it does not save your username (email address) and password.  Your computer may ask you if you want to save your username and password after you enter it.  Make sure to click NO.  \n \nWhen you are finished using your email, always log out or sign out.  If you do not hit LOG OUT or SIGN OUT your email account may still be open due to a feature called AutoComplete, even if you close the window.  \n \nIf you do decide to give the abuser your email address, remember to not open any email attachments sent from the abuser or to reply to an email sent by the abuser using your new email account, as these actions may let the abuser install spyware on your computer and track your email messages.", @"DVTechDetail3");
    
    TechSecurity *tech4 = [TechSecurity new];
    tech4.techTitle = NSLocalizedString(@"Email Security - What should I do if I think the abuser can access my email account?", @"DVTechTitle4");
    tech4.techDetail = NSLocalizedString(@"If the abuser has access to your email account or computer, he may be able to read the emails you send and receive, even if you delete them.  Therefore, to send and receive emails that might anger the abuser if he saw them, you may want to set up an alternate email account that the abuser doesn't know about.  There are a number of free, Web-based e-mail services that you can use.  When signing up for a new email account, do not use any of your real identifying information if you wish to remain private and anonymous. \n \nKeep in mind that the abuser may still be able to read your email if you create a new account if you do not log out properly or if you choose a password that he can guess or find.  The safest way to use a new email address is from a computer that the abuser does not have any access to.  \n \n \nNote: If you do decide to give the abuser your email address, remember to not open any email attachments sent from the abuser or to reply to an email sent by the abuser using your new email account, as these actions may let the abuser install spyware on your computer and track your email messages.", @"DVTechDetail4");
    
    TechSecurity *tech5 = [TechSecurity new];
    tech5.techTitle = NSLocalizedString(@"Email Security - How do I know I am sending email from my account or from the abuser’s account when I click on an email link that I found on a website?", @"DVTechTitle5");
    tech5.techDetail = NSLocalizedString(@"As you are browsing the Internet, you may come across an email address that you can click on in order to send an email to that address -- something that looks like this: info@domain123.com.  \n \nIf you share a computer with the abuser and click on an email link, you may be sending the email from the abuser's email address without even knowing it.  This could put you in danger since whoever you wrote to might try to write you back, but will be writing to the abuser's email address instead.  \n \nIt is safer to copy the email address and paste it directly into a new message from your own email account.", @"DVTechDetail5");
    
    TechSecurity *tech6 = [TechSecurity new];
    tech6.techTitle = NSLocalizedString(@"Email Security - What should I do if I receive threatening or harassing emails from the abuser?", @"DVTechTitle6");
    tech6.techDetail = NSLocalizedString(@"You should print and save any threatening or harassing email messages the abuser sends you, as they may be used as evidence of his abuse in court or with the police.  To be able to prove that the abuser sent these messages, you may have to print out the messages with the “header,” which shows the account information of the sender of the email. \n \nAdditionally, depending on the content of the messages and how many he sends, he may be committing a crime, such as stalking or harassment.  You can report any threatening or harassing emails to the police.", @"DVTechDetail6");
    
    TechSecurity *tech7 = [TechSecurity new];
    tech7.techTitle = NSLocalizedString(@"Safety with Social Media", @"DVTechTitle7");
    tech7.techDetail = NSLocalizedString(@"The only way to be sure that you will not reveal personal or confidential information about yourself on social media sites is to not use social media.  However, if you do maintain an online presence, there are some things you can do to try to control who sees your information.  Please consider the risks before creating a profile on a social media website.", @"DVTechDetail7");
    
    TechSecurity *tech8 = [TechSecurity new];
    tech8.techTitle = NSLocalizedString(@"Safety with Social Media - What are basic safety measures to take when using social media?", @"DVTechTitle8");
    tech8.techDetail = NSLocalizedString(@"Here is a list of some things you can do to try to stay safe:  \n \nFor any account that you create, use a strong password that no one could figure out and keep it private.  To read more about this, please see What safety steps should I take even if I think the abuser does NOT have access to my email account?  \n \nLimit the amount of identifying information you use, like your birth date, address, full name, etc. (This step can also help prevent identity theft.)  \n \nBe careful about what you post!  Consider the articles you post to your profile, the pictures you put in an online album, or any status updates that indicate where you are at the moment (such as CHECKING IN at a restaurant) or where you are headed (such as a vacation destination).  These types of posts can reveal a lot about you: your interests, your whereabouts, and your future plans, which can lead to someone finding you. \n \nLog out of your account by clicking “log out” after each session on your social media page.  Do not simply close the browser, as it does not always log you out of your account, which would then be viewable by any other user of the computer.", @"DVTechDetail8");
    
    TechSecurity *tech9 = [TechSecurity new];
    tech9.techTitle = NSLocalizedString(@"Safety with Social Media - What information is available about me on the Internet?", @"DVTechTitle9");
    tech9.techDetail = NSLocalizedString(@"It’s good practice to assume that anything you put on the Internet can be seen.  However, even information that you have not entered into a website yourself can show up on the Internet - for example, if you have a magazine subscription or if you donate to a political campaign, your personal information can be accessed on the Internet.  Despite privacy settings, computer hackers and computer spyware can potentially access your information.  \n \nA good test to find out how searchable you are on the Internet is to search your own name (using a search engine such as Google) and see what comes up.  If you have a common name, try modifying your search by including some basic information like your city or high school.  If you find articles or images about yourself, you may try to contact the administrator of the website and ask that s/he remove them although there is no guarantee that the website administrator will honor your request.", @"DVTechDetail9");
    
    TechSecurity *tech10 = [TechSecurity new];
    tech10.techTitle = NSLocalizedString(@"Facebook - Select your audience", @"DVTechTitle10");
    tech10.techDetail = NSLocalizedString(@"When you post content on Facebook, you can select the audience that can see the content. You can limit who can see what you’re sharing by blocking content from particular users or choosing to only post updates that a few people can see. Using your privacy settings, you can also choose to approve all tags before they appear on your Timeline. When posting a status update, a picture, or other content, you can select to post to a list of people, or choose individual people to share with, so that only those on that list can see what you’re posting.  Whenever you share anything, you have the option of sharing it with the Public, Friends, Only Me, or Custom. The Custom option is where you can choose more specifically how to share the post.", @"DVTechDetail10");
    
    TechSecurity *tech11 = [TechSecurity new];
    tech11.techTitle = NSLocalizedString(@"Facebook - Know the Mutual Friends", @"DVTechTitle11");
    tech11.techDetail = NSLocalizedString(@"It’s important to know who the mutual Facebook friends are and limit what you share with them.  Mutual Facebook friends are sometimes unavoidable, as they can be “real-life” friends, family members, or your children’s friends. Even if you don’t set your privacy setting to “friends of friends,” don’t forget that a friend-of-a-friend could allow the abusive person to see your content or even forward information about you to the abuser. Digital information of any kind can always be re-shared – on Facebook or other platforms.", @"DVTechDetail11");
    
    TechSecurity *tech12 = [TechSecurity new];
    tech12.techTitle = NSLocalizedString(@"Facebook - Be cautious when accepting new friends", @"DVTechTitle12");
    tech12.techDetail = NSLocalizedString(@"Facebook is based on real names and authentic identities, where people represent who they are in the real world. Unfortunately, some abusive individuals use clever tactics to gain access to a victim’s information. If you receive a friend request from someone you thought you were already friends with, ask them if they created a new page. In some instances, abusive individuals maliciously create accounts impersonating a friend of the person they want to connect with.", @"DVTechDetail12");
    
    TechSecurity *tech13 = [TechSecurity new];
    tech13.techTitle = NSLocalizedString(@"Facebook - Who can see what you share?", @"DVTechTitle13");
    tech13.techDetail = NSLocalizedString(@"You can choose who sees your Facebook activity either by setting a default setting under “Privacy Settings”/ “Who can see my stuff”, or by selecting your audience when you make an individual post. Anytime you select an audience in either place, it is remembered and set as your default for the next post you make. In other words, if you set something “Public” or to “Friends”, that will be the audience for your next post unless you change it. You can block an individual friend from seeing a particular post or limit your post to only be viewable by selected friends through using lists, as explained on the previous page. You can also limit the audiences for past posts if you weren’t using privacy settings previously. Take note that you control the privacy of your own information, but if you post something on someone else’s page, who can see what you posted will be dictated by their privacy settings.", @"DVTechDetail13");
    
    TechSecurity *tech14 = [TechSecurity new];
    tech14.techTitle = NSLocalizedString(@"Facebook - Who can find you?", @"DVTechTitle14");
    tech14.techDetail = NSLocalizedString(@"Some survivors may want to use Facebook to stay connected with a limited group of friends but don’t want others to be able to find them. (Remember that even if you choose the most restrictive option, “Friends”, it is possible that others can find you through a friend’s page.) You can also choose to allow or not allow search engines to directly link to your timeline. If this selection is “off” when someone searches your name in a search engine, such as Google or Bing, or on people-finder sites, your Facebook page will not come up. This option is important for survivors who want to minimize the amount of information that comes up when someone does an online search for them. It is important to note, however, that if you post content as “Public”, that content could still show up in a search engine. If you are concerned about your profile being found, set this privacy setting to “off” and use the audience filter for both past and future posts.", @"DVTechDetail14");
    
    TechSecurity *tech15 = [TechSecurity new];
    tech15.techTitle = NSLocalizedString(@"Facebook - Who can tag you?", @"DVTechTitle15");
    tech15.techDetail = NSLocalizedString(@"Tagging is another function within Facebook that may allow others to find your timeline. Using your privacy settings, you can choose to approve all tags before they appear on your timeline, you can limit the audience of posts that you are tagged in, and you can turn off the “tag suggestions” feature.  You can also remove tags of yourself, although removing a tag or not approving a tag does not remove the post , the tag or the photo from Facebook completely. Those options only allow you to control what shows up on your own timeline. If you are concerned about your privacy, you can use Facebook’s social reporting tools to ask the individuals to remove photos or posts with the individuals who made them. If something is posted that is harmful to you and violates Facebook’s community standards, you can report it to Facebook. For more information on reporting options, please see the Facebook Safety: Tips for Survivors handout Third Line of Defense: Be Safe on pages 4-5 of this document.", @"DVTechDetail15");
    
    TechSecurity *tech16 = [TechSecurity new];
    tech16.techTitle = NSLocalizedString(@"Facebook - What are others saying about you?", @"DVTechTitle16");
    tech16.techDetail = NSLocalizedString(@"Although you can’t control what others say about you on their own timeline and elsewhere on Facebook, you can control what they say about you on your own timeline. Under Timeline and Tagging, you can control who can post on your timeline and who can see your timeline.", @"DVTechDetail16");
    
    TechSecurity *tech17 = [TechSecurity new];
    tech17.techTitle = NSLocalizedString(@"Facebook - By Default: What Will Always Be Public", @"DVTechTitle17");
    tech17.techDetail = NSLocalizedString(@"Although Facebook gives you many options to expand your privacy, some information will always be available if someone comes across your timeline. This information includes your name, profile photo, cover photo, network you belong to, gender, username and user ID. Survivors may want to strategize about what information to share, use a generic profile or cover photo, or determine whether they want to be a part of any network in order to maintain their privacy.  \n \nLiking or commenting on public posts. Note that posts or photos that are on other people’s or organization’s pages take on the privacy settings they set for that item. In other words, if someone else’s photo is set to public (anyone can see it) and if you like it or make a comment, your comment and the fact that you liked it will also be public.", @"DVTechDetail17");
    
    TechSecurity *tech18 = [TechSecurity new];
    tech18.techTitle = NSLocalizedString(@"Facebook - Unfriending or Blocking", @"DVTechTitle18");
    tech18.techDetail = NSLocalizedString(@"There are two options within Facebook for addressing someone who is bothering you.  \n \nWhen you unfriend someone, it means that activities (pictures, updates, posts) that you set to the privacy setting “Friends” will no longer be seen by that person. Additionally, now that you are no longer friends, their activities will not show up on your timeline. However, they will still be able to see whatever is public on your profile, including any activities you post with a “Public” privacy setting, and posts made by mutual friends to your timeline or comments that you post on the mutual friend’s timeline. They can also re-request you as a friend.  \n \nWhen you block a person, they will not be able to view your timeline activity, nor will they be able to message or tag you or send you another friend request. You will also not be able to see their activity. They will still be able to see your public information and activity within apps or groups. \n \nUse your judgment and instincts when considering the timing of these options. Since stalkers and abusers use monitoring and threats to maintain power and control over their victims, when a survivor limits access, abusers sometimes find other methods of control or escalate dangerous behavior, including increased threats and even assault. Ending a relationship or contact with an abusive person can be dangerous for many survivors so it is important to plan for safety and talk to a trained victim advocate. If you are concerned about what the person might do if you were to cut off contact, call your local domestic violence program or police for more information and help.", @"DVTechDetail18");
    
    TechSecurity *tech19 = [TechSecurity new];
    tech19.techTitle = NSLocalizedString(@"Facebook - Reporting someone, a post or a picture to Facebook", @"DVTechTitle19");
    tech19.techDetail = NSLocalizedString(@"Reporting someone, a post or a picture to Facebook is a step that you can take if you feel that what is being posted or how the person is using the site is harmful. This can be done from your timeline, from a message someone sent you, or on your newsfeed.  You can report posts on your timeline, posts that you were tagged in, or private messages. You can also report a photo, with or without a tag of you.  \n \nWhen using the reporting option, you also have the choice of communicating with the person who posted the content to ask them to remove or edit the content and to inform another trusted person of the content you are concerned about. \n \nIf the content violates Facebook’s Terms of Service, it may be removed. Facebook has Community Standards and they will remove content if it contains violence or threats, bullying or harassment, hate speech, nudity or pornography, or is claiming to be someone else.", @"DVTechDetail19");
    
    
        dvSecurity = [NSArray arrayWithObjects:tech1, tech2, tech3, tech4, tech5, tech6, tech7, tech8, tech9, tech10, tech11, tech12, tech13, tech14, tech15, tech16, tech17, tech18, tech19, nil];


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
    return [dvSecurity count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    TechSecurity *dvTech = [dvSecurity objectAtIndex:indexPath.row];
    cell.textLabel.text = dvTech.techTitle;
    cell.textLabel.numberOfLines=0;
    cell.textLabel.font=[UIFont fontWithName:@"Georgia-Bold" size:14];

    
    // Configure the cell...
    
    return cell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"SecurityDetailSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        TechSecurityViewController *DVTechController = segue.destinationViewController;
        DVTechController.dvTechSecurity = [dvSecurity objectAtIndex:indexPath.row];
    }
}

@end
