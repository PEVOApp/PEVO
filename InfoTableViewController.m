//
//  InfoTableViewController.m
//  Pevo
//
//  Created by Alicia MacBook Pro on 10/3/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "InfoTableViewController.h"
#import "SWRevealViewController.h"
#import "InfoViewController.h"
#import "PPInfo.h"

@interface InfoTableViewController ()

@property (nonatomic, copy) NSArray *tempDeleteAtWill;

@end

@implementation InfoTableViewController
{
    NSArray *PPBInfo;
}

//// init would be the preferred choice for settin up / initializing model data
//- (instancetype)initWithCoder:(NSCoder *)aDecoder
//{
//    self = [super initWithCoder:aDecoder];
//    if (self) {
//        _tempDeleteAtWill = @[@"1", @"2", @"3"];
//    }
//    return self;
//}

// intended for view setup, color, textlabel values, etc

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
}
- (void)viewDidLoad

{
    [super viewDidLoad];
    
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    PPInfo *PPNewInfo0 = [PPInfo new];
    PPNewInfo0.infoTitle = NSLocalizedString(@"Did you tell your employer about the abuse or ask your employer to help you?", @"PPNewInfo0");
    PPNewInfo0.infoDetail =  NSLocalizedString(@"If you were forced to quit to escape abuse, can you show that the employer had notice but did not help you? Maybe you asked to change to the day shift to avoid a more dangerous situation at night, or for other changes, and the employer did not help you.  It is important that you give this information to the Department of Labor when you file for unemployment.", @"PPNewInfo0");
    
    PPInfo *PPNewInfo1 = [PPInfo new];
    PPNewInfo1.infoTitle = NSLocalizedString(@"Employers can apply for a protective order to protect workers.", @"PPNewInfo1");
    PPNewInfo1.infoDetail =  NSLocalizedString(@"If you have been threatened of the job, you can ask your employer to apply for a court order to stop your abuser from coming to your workplace.", @"PPNewInfo1");
    
    PPInfo *PPNewInfo2 = [PPInfo new];
    PPNewInfo2.infoTitle = NSLocalizedString(@"You can appeal if your unemployment claim is turned down.", @"PPNewInfo2");
    PPNewInfo2.infoDetail =  NSLocalizedString(@"After you apply for unemployment at the Department of Labor, you will be called by a claims examiner.  The claims examiner will ask for more information from you and your employer over the phone or in person.  If your claim is turned down, you must file an appeal within 15 days of the release date.  To file an appeal, fill out a simple form at the Department of Labor an mail or fax it to the Department of Labor.  In your appeal, ask for a hearing, a hearing officer will listen to you, your employer, and any witnesses.  The hearing officer will also look at other proof such as documents or photographs.  Contact Georgia Legal Services or a private attorney immediately.  The hearing is your only chance to tell your story and to present proof.  If you lose the hearing, you may file another appeal, but later appeals are by review only and are more difficult to win.", @"PPNewInfo2");
    
    PPInfo *PPNewInfo3 = [PPInfo new];
    PPNewInfo3.infoTitle = NSLocalizedString(@"Were you fired or are you thinking of quitting because of an abuser’s harassment on the job?", @"PPNewInfo3");
    PPNewInfo3.infoDetail =  NSLocalizedString(@"You may be able to get unemployment benefits if you are fired from your job or quit because of Domestic violence.  Many women have lost or left jobs because of abuse.  Abusers often try to get victims fired to make it harder for them to escape the abuse.  Georgia does not have a special unemployment rule for people who lose their jobs because of domestic violence.  Still, Georgia law may allow you to get unemployment while you look for work.  Get legal advice as soon as possible after you lose or quit your job. \n\nTo apply for unemployment benefits, you must visit your local Department of Labor office.  If you speak Spanish you have a right to get help for the Department of Labor.  Ask for an application in Spanish.  Ask to talk to a Spanish speaking person.  Appeal information should also be in Spanish.", @"PPNewInfo3");
    
    PPInfo *PPNewInfo4 = [PPInfo new];
    PPNewInfo4.infoTitle = NSLocalizedString(@"Were you fired or laid off because of domestic violence?", @"PPNewInfo4");
    PPNewInfo4.infoDetail =  NSLocalizedString(@"It is easier to get unemployment if your employer fired you.  An employer must show that you were at fault and failed to follow an employer rule to deny you unemployment.  The Department of Labor looks at whether you broke the rule and whether you knew about the rule.  They also look at whether the rule was always followed, whether you were warned in the past, and how long you worked there.  If you were fired because of domestic violence, that is not your fault. ", @"PPNewInfo4");
    
    PPInfo *PPNewInfo5 = [PPInfo new];
    PPNewInfo5.infoTitle = NSLocalizedString(@"Were you fired because you were out sick or hurt?", @"PPNewInfo5");
    PPNewInfo5.infoDetail =  NSLocalizedString(@"Some employers fire workers who are being harassed on the job because they are worried about safety or because they are worried about their business.  Unless you invite the abuser to call or come to the workplace, that is not your fault and you should receive benefits.", @"PPNewInfo5");
    
    PPInfo *PPNewInfo6 = [PPInfo new];
    PPNewInfo6.infoTitle = NSLocalizedString(@"Were you fired because of the way you looked after you were abused?", @"PPNewInfo6");
    PPNewInfo6.infoDetail =  NSLocalizedString(@"Some employers fire victims because they have scratches or bruises.  If you were fired because of the way you looked, you should get benefits.  you may also be able to file a lawsuit.  Find an employment attorney as soon as possible.", @"PPNewInfo6");
    
    PPInfo *PPNewInfo7 = [PPInfo new];
    PPNewInfo7.infoTitle = NSLocalizedString(@"Were you fired because you missed work to go to court?", @"PPNewInfo7");
    PPNewInfo7.infoDetail =  NSLocalizedString(@"An employer cannot legally fire you because you had to go to court.  You must have told the employer about your court hearing and not have been charged with a crime.  If you lost your job because you missed work to go to court, you should get benefits.  You may also be able to file a lawsuit.  Find an employment attorney as soon as possible.", @"PPNewInfo7");
    
    PPInfo *PPNewInfo8 = [PPInfo new];
    PPNewInfo8.infoTitle = NSLocalizedString(@"Did you quit your job because of Domestic violence?", @"PPNewInfo8");
    PPNewInfo8.infoDetail =  NSLocalizedString(@"You may need to quit your job to move away to escape the abuse.  It is harder to get unemployment when you quit a job than when you have been fired.  When you quit, you must show that you had good cause for quitting.  Good cause cannot be a personal reason, but must be a work connected reason.", @"PPNewInfo8");
    
    PPInfo *PPNewInfo9 = [PPInfo new];
    PPNewInfo9.infoTitle = NSLocalizedString(@"Did you quit your job because your health was in danger?", @"PPNewInfo8");
    PPNewInfo9.infoDetail =  NSLocalizedString(@"You have good cause if you quit because your health was in danger.  Your health must be made worse, so that you are not able to do the work.  You must have gotten advice from a doctor before quitting the job, unless it is obvious why you cannot work.  You must also talk with your employer first and try to work it out before quitting.  For example, you might ask for a transfer or for more protection at work. ", @"PPNewInfo9");
    
    PPInfo *PPNewInfo10 = [PPInfo new];
    PPNewInfo10.infoTitle = NSLocalizedString(@"Did you quit your job after harassment or fear for your safety on the job?", @"PPNewInfo8");
    PPNewInfo10.infoDetail =  NSLocalizedString(@"You may be able to get benefits if you quit because of harassment on the job that would cause a reasonable person to quit the job.  If you quit the job because of fear for your safety, you may be able to get unemployment.  The Department of Labor looks at what a reasonable person would do.", @"PPNewInfo10");
    
    
    PPBInfo = [NSArray arrayWithObjects:PPNewInfo0, PPNewInfo1, PPNewInfo2, PPNewInfo3, PPNewInfo4, PPNewInfo5, PPNewInfo6, PPNewInfo7, PPNewInfo8, PPNewInfo9, PPNewInfo10, nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [PPBInfo count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    PPInfo *info = [PPBInfo objectAtIndex:indexPath.row];
    cell.textLabel.text = info.infoTitle;
    cell.textLabel.numberOfLines=0;
    cell.textLabel.font=[UIFont fontWithName:@"Georgia-Bold" size:14];
    
    
    return cell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"InfoDetailSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        InfoViewController *InfoController = segue.destinationViewController;
        InfoController.PPNewInfo = [PPBInfo objectAtIndex:indexPath.row];
    }
}




@end
