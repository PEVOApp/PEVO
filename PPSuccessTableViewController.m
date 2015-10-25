//
//  PPSuccessTableViewController.m
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/13/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "PPSuccessTableViewController.h"
#import "SuccessStory.h"
#import "PPSuccessStoryViewController.h"
#import "SWRevealViewController.h"


@interface PPSuccessTableViewController ()

@end

@implementation PPSuccessTableViewController
{
    
    NSArray *successStory;
    
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
    
    SuccessStory *story1 = [SuccessStory new];
    story1.name = @"Karen";
    story1.title = NSLocalizedString(@"I can do this, I know I can!", @"successTitle1");
    story1.successImage = @"saffron1.jpg";
    story1.detail = NSLocalizedString(@"After 6 years of manipulation, abuse and controlling from a man 20 years her senior, Pumpkin took a leap of faith, let go and trusted that she could move on! \n \nA story of courage and hope, Pumpkin from Stanton, New York, was intrigued by her son’s father David, demeanor and charisma. Taking advantage of her need to fulfill the void of her missing father; he pursued, and manipulated her early in the relationship. \n \nDespite warnings from David’s wife, Pumpkin continued to stay involved. Admitting her low-self esteem and confidence levels; she allowed him to confine her, do drug runs and be subjective to physical and emotional abuse. She was even persuaded to sleep with both him and his wife. \n \nPumpkin endured violent beatings with belts, name calling and belittlement by David. He was very jealous of the relationship she had with her mother and used his manipulative ways to chastise their relationship. Pumpkin wanted out but she thought it was never going to happen. Then she finally got the chance. David went to jail for his involvement in criminal drug trafficking. \n \nWith her assailant being incarcerated, Pumpkin tried to re-establish her life and had help from her mother. David was finally released and paroled but in another state. They kept contact and he was able to convince her that he had changed.. He got a job and said that he was finished with the street life. She wanted nothing more than for them to be a family. His wife had left him and she figured they could work things out. After all she loved him. Soon, she was convinced that they could work things out. \n \nPumpkin moved away from her Mother and moved to another state to be with David, who promised her that they could be a family. Although, she was stronger than before and she didn’t want to lose what she had gained when he was incarcerated but she trusted that they could work things out. Things seemed to be ok for awhile until he lost his job and she became the only source of income in the household. \n \nDavid soon wanted to get back involved in drugs and illegal activities; asking Pumpkin to partake but she refused. Slowly the arguments came and things began to escalate more and more until he finally attacked her in their bathroom, left the house and never came back. \n \nSeveral days had passed. Although, Pumpkin was worried, there was some relief. David finally called and said, “I guess you can run home to your Mother, I’m not coming back!” At that moment, Pumpkin felt relieved and free. She gathered her children clothes and left the home, never looking back. She left all furnishings and any possessions that would not fit into her car and she moved in with her mother. \n \nSince that day, Pumpkin has been strong in her faith walk. She has never looked back, despite David efforts. She credits the support of her friends and family and her involvement in church. But most of all said, she believed that she could move on and be fine without him. \n \nPumpkin took authority over doubt; at one time she felt that she needed him to fill the void of her father or to have a family. She had placed doubt over faith that she could live a happy life without him and his abuse. \n \n**It isn’t always easy but with faith that it will get better. Know you CAN!  \n\nAffirmation: \n\n“I CAN... I KNOW I CAN! I am a believer not a doubter; I have Faith with expectancy that I CAN do this!", @"successDetail1");
    
    SuccessStory *story2 = [SuccessStory new];
    story2.name = @"Mary";
    story2.title = NSLocalizedString(@"Enough is Enough, Time to Let Go!", @"successTitle2");
    story2.successImage = @"saffron2.jpg";
    story2.detail = NSLocalizedString(@"One of the hardest things to do in life is to say “Enough is ENOUGH, I must let go!” \n \nAfter 13 years of marriage, Kat finally said just that! \n \nMeet Kat from ____, Ohio. She got married at 19 years of age and thought that she was marrying the love of her life! But later learned that what she actually married was a controlling and abusive man. \n \nA Mother of 2 children, Kat suffered though many days of being physically, sexually and emotionally abused by her husband. What started off as snatching, pushing and slaps after arguments it lead to controlling her friendships and relationships with others. After her pregnancy, the attacks got worse. There were incidents where she was held by gun point and bloody eyes. \n \nStill Kat stayed. They soon had 2 small children, who loved their father of course and her husband ironically, was a good father to them. However, despite how good he was to the children, the abuse continued and Kat grew unhappy. \n \nKat remembered a time when their 6 year old daughter told her Grandmother, “My mom is sad all the time”. When her family tried to intervene, Kat pushed them away. \n \nDespite family efforts, Kat refused to leave. \n \nThen one Sunday at church, Kat heard the Pastor delivered a powerful message “Ladies should leave if abused!” She said “It came out so clear.” Something had to give, her life or his! \n \nKat decided then and there that she had enough! She allowed her family to help her move out. Leaving everything, including her children the most painful sacrifice! She recalled, “I had no resources and had to start completely over. I didn’t want to drag them out of a secured environment. They grew up in the house, he worked a good job and I knew he wouldn’t hurt them”. \n \nUnderstanding that it is not an easy task, to leave her children, divorce and start over. Kat kept herself busy and listened to inspirational audible recordings of Spiritual leaders. Kat credits her involvement in church and having a relationship with GOD as her inner strength. \n \nNow at 37 years old, divorced and much happier than ever! Kat has reestablished her life, shares joint custody of her children and has found inner peace. She mediates, attends yoga, involves herself in things that she enjoys doing including helping others. \n \nJust like Kat, you may have to make some hard decisions and sacrifice more than you planned for but follow your spirit and trust that you too deserve to be happy! \n \n**Remember not to confuse temporary sacrifices as permanently surrendering. Set your goals and find solace on achieving them.  \n\nAffirmation: \n \n“Enough is Enough” I deserve happiness and peace. I will let go and embrace happiness and peace”.", @"successDetail2");

    
    successStory = [NSArray arrayWithObjects:story1, story2, nil];
    
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
    return [successStory count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"SuccessTableCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    
    SuccessStory *success = [successStory objectAtIndex:indexPath.row];
    UIImageView *successImageView = (UIImageView *)[cell viewWithTag:100];
    successImageView.image = [UIImage imageNamed:success.successImage];
    
    UILabel *nameLabel = (UILabel *)[cell viewWithTag:101];
    nameLabel.text = success.name;
    
    UILabel *titleLabel = (UILabel *)[cell viewWithTag:102];
    titleLabel.text = success.title;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"SuccessStorySegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        PPSuccessStoryViewController *SSController = segue.destinationViewController;
        SSController.stories = [successStory objectAtIndex:indexPath.row];
    }
}
@end
