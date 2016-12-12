//
//  DVLawTableViewController.m
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/13/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "DVLawTableViewController.h"
#import "DVDetailLawViewController.h"
#import "SWRevealViewController.h"
#import "TheLaw.h"



@interface DVLawTableViewController ()

@end

@implementation DVLawTableViewController
{
    NSArray *theLaw;
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
//
//    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
//    
//
//    _sidebarButton.target = self.revealViewController;
//    _sidebarButton.action = @selector(revealToggle:);
    
    TheLaw *dvLaw0 = [TheLaw new];
    dvLaw0.lawTitle = NSLocalizedString(@"Restraining Orders -- Family Violence Protection Orders -- Overview of Civil vs. Criminal Law", @"DVLawTitle0");
    dvLaw0.lawDetail = NSLocalizedString(@"The legal system is divided into two areas: civil law and criminal law. Separate courts govern (control) these two areas of the law.\n \nOne of the most confusing things about the legal system is the difference between civil cases and criminal cases. In domestic violence situations, there may be both civil and criminal cases occurring at the same time as a result of the same violent act. You may want to pursue both civil and criminal actions for maximum protection. The major differences have to do with who takes the case to court and the reason for the case. \n \nCivil Law \n \nIn a civil domestic violence action, you are asking the court to protect you from the person abusing you. You are not asking the court to send that person to jail for committing a crime. However, if the abuser violates the civil court order, he may be sent to jail for the violation. In a civil case, you are the person bringing the case against the abuser and (in most circumstances), you have the right to withdraw (drop) the case if you want to.  Protective orders in Georgia are handled in civil court. \n \nCriminal Law \n \nThe criminal law system handles all cases that involve violations of criminal law such as harassment, assault, murder, theft, etc. A criminal complaint involves your abuser being charged with a crime.  In a criminal case, the prosecutor (also called the district attorney) is the one who has control over whether the case against the abuser continues or not.  It is the county/state who has brought the case against the abuser, not the victim. It is possible that if you do not want the case to continue (if you do not want to “press charges”), the prosecutor might decide to drop the criminal charges but this is not necessarily true.  The prosecutor can also continue to prosecute the abuser against your wishes and could even issue a subpoena (a court order) to force you to testify at the trial.", @"DVLawDetail0");
    
    TheLaw *dvLaw1 = [TheLaw new];
    dvLaw1.lawTitle = NSLocalizedString(@"Restraining Orders -- Family Violence Protection Orders -- What is the legal definition in Georgia of family violence?", @"DVLawTitle1");
    dvLaw1.lawDetail = NSLocalizedString(@"This section defines domestic violence for the purposes of getting a family violence protection order. \n \nIn general, if a family or household member hurts you or tries to hurt you (with or without using a weapon) or gives you reason to believe that s/he is going to hurt you in the near future, that person has committed an act of family violence.  In order to get a protective order, you must have a specific relationship with your abuser. \n \nFamily violence includes the occurrence of one or more of the following acts when committed by a family/houshold member: \n \nbattery \n \nsimple battery \n \nsimple assault \n \nassault \n \nstalking \n \ncriminal damage to property \n \nunlawful restraint \n \ncriminal trespass \n \nor any felony", @"DVLawDetail1");
    
    TheLaw *dvLaw2 = [TheLaw new];
    dvLaw2.lawTitle = NSLocalizedString(@"Restraining Orders -- Family Violence Protection Orders -- What is a family violence protection order?", @"DVLawTitle2");
    dvLaw2.lawDetail = NSLocalizedString(@"A Family Violence Protection Order is a written order from a court that tells the abuser to stop the abuse or face serious legal consequences.  It offers civil legal protection from domestic violence to both male and female victims.", @"DVLawDetail2");
    
    TheLaw *dvLaw3 = [TheLaw new];
    dvLaw3.lawTitle = NSLocalizedString(@"Restraining Orders -- Family Violence Protection Orders -- What types of family violence protection order are available?", @"DVLawTitle3");
    dvLaw3.lawDetail =  NSLocalizedString(@"In GA there are two types of Family Violence Protection Orders: \n \nTemporary Ex Parte Orders and \n \nFamily Violence Protection Orders. \n \nA Temporary Ex Parte Order is designed to protect you from the abuser until the court holds a hearing.  A hearing is mandatory before you can receive a long-term Family Violence Protection Order.  You can receive a temporary order without a court hearing, and without your abuser’s knowledge. (Ex parte means without your abuser present). \n \nIn order to receive a temporary ex parte order, you must file a petition with the court.*1  After you file your petition, a judge may grant a temporary order only if s/he believes that you are in immediate danger.  In your petition, it is important to tell the judge, in detail, of the occurrence of family violence in the past so that the judge can take that into account when s/he makes a decision.*2  Temporary orders last up to 30 days, or until your court hearing if it is being heard in another county in the same circuit.  They can be extended beyond 30 days upon agreement by both parties.*3 \n \nA Family Violence Protection Order can be issued after a court hearing in which you and the abuser both have a chance to tell your sides of the story.  Family Violence Protection Orders last up to one year, but can be extended for up to three years (a permanent order).*4 \n \n \n*1 O.C.G.A. § 19-13-3(a) \n \n*2 O.C.G.A. § 19-13-3(b) \n \n*3 O.C.G.A. § 19-13-3(c) \n \n*4 O.C.G.A  § 19-13-4", @"DVLawDetail3");
    
    TheLaw *dvLaw4 = [TheLaw new];
    dvLaw4.lawTitle = NSLocalizedString(@"Restraining Orders -- Family Violence Protection Orders -- How can a family violence protection order help me?", @"DVLawTitle4");
    dvLaw4.lawDetail =  NSLocalizedString(@"A Family Violence Protection Order can: \n \nTell the abuser to leave you alone; \n \nGive you possession of the house and force the abuser to leave (you can ask the court to have the sheriff send someone home with you to enforce this part of the order); \n \nOr if you are not given possession of the home, the judge can order assistance to help you get your personal property; \n \nMake the abuser provide decent alternate housing for a spouse, former spouse, or parent and children; \n \nGive you temporary custody of your children and set temporary visitation rights; \n \nAward you temporary child support and/or spousal support from the abuser; \n \nOrder the abuser to go to counseling; \n \nAward costs and attorney's fees to either party; \n \nLead to your abuser's arrest if he breaks the order.* \n \nOnce the court grants a Family Protective Order, it will be effective throughout the state of Georgia, and the abuser will have to follow the terms of the order.  If your abuser violates the terms or the order, you can contact the law enforcement agency in your area and he can be arrested. \n \nWhether a judge orders any or all of the above depends on your need for protection, and the facts of your case. \n \n \n* O.C.G.A. § 19-13-4", @"DVLawDetail4");
    
    TheLaw *dvLaw5 = [TheLaw new];
    dvLaw5.lawTitle = NSLocalizedString(@"Restraining Orders -- Family Violence Protection Orders -- In which county can I file for a family violence protection order?", @"DVLawTitle5");
    dvLaw5.lawDetail =  NSLocalizedString(@"You can file for a family violence protection order in the superior court in the county where the abuser lives if he lives in Georgia. If the abuser lives outside of Georgia, you can file in the superior court in the county where you live or where the abuse occurred.* \n \n \n* O.C.G.A § 19-13-2", @"DVLawDetail5");
    
    TheLaw *dvLaw6 = [TheLaw new];
    dvLaw6.lawTitle = NSLocalizedString(@"Restraining Orders -- Stalking Protective Orders -- What is the legal definition of stalking in Georgia?", @"DVLawTitle6");
    dvLaw6.lawDetail =  NSLocalizedString(@"Stalking is defined as when someone: \n \nfollows you; \n \nplaces you under surveillance; or \n \ncontacts you (in person, by phone, email, etc.) without your permission for the purpose of “harassing or intimidating” you.* \n \n“Harassing or intimidating” you means that the stalker does repeated acts that cause you emotional distress by placing you in reasonable fear for your safety or the safety of a member of your immediate family (and the acts serve no legitimate purpose).  There does not have to be a specific threat of death or bodily injury.* \n \n* O.C.G.A. § 16-5-90(a)(1)", @"DVLawDetail6");
    
    TheLaw *dvLaw7 = [TheLaw new];
    dvLaw7.lawTitle = NSLocalizedString(@"Restraining Orders -- Stalking Protective Orders -- What is a stalking protective order and how can it help me?", @"DVLawTitle7");
    dvLaw7.lawDetail =  NSLocalizedString(@"A stalking protective order is issued by the court to protect you from the stalking behavior of another person. The court can order a person to stop contacting, harassing, or intimidating you. Sometimes orders can also require that you and/or the stalker get psychiatric/psychological services to prevent continued stalking in the future. The order could also order the stalker to pay your attorney’s fees (or, if you lose the case, that you pay the respondent’s attorney’s fees).* \n \nNote: If the stalker is also arrested for stalking, and you provide the court with a landline telephone number, you also have the right to be notified when bail hearings are scheduled and when the stalker is released from custody.** \n \n* O.C.G.A. § 19-13-4\n \n** O.C.G.A. § 16-5-93", @"DVLawDetail7");
    
    TheLaw *dvLaw8 = [TheLaw new];
    dvLaw8.lawTitle = NSLocalizedString(@"Restraining Orders -- Stalking Protective Orders -- What types of stalking protective orders are there and how long do they last?", @"DVLawTitle8");
    dvLaw8.lawDetail =  NSLocalizedString(@"When you file for a protective order, if the judge believes that stalking has happened in the past and that it may likely happen again in the future, the judge can issue a temporary ex parte order to protect you.  An ex parte order can be issued by the court without the presence of the stalker (defendant).  After the court issues an ex parte order, a hearing must be held within 30 days, at which point you and the defendant will have a chance to prove your case, and the judge will decide whether or not to issue a final order.**  A final order will generally last for up to one year.  However, you can later file a motion (legal papers) asking that it be extended for up to three years or permanently.*** \n \n* O.C.G.A. § 16-5-94(d) \n \n** O.C.G.A. §§ 16-5-94(e); 19-13-3(c) \n \n*** O.C.G.A. §§ 16-5-94(e); 19-13-4(c)", @"DVLawDetail8");
    
    TheLaw *dvLaw9 = [TheLaw new];
    dvLaw9.lawTitle = NSLocalizedString(@"Restraining Orders -- Bond for Good Behavior -- What is a bond for good behavior?", @"DVLawTitle9");
    dvLaw9.lawDetail =  NSLocalizedString(@"In the state of Georgia, you can apply for a bond for good behavior, in addition to a family violence protection order.  The judge may issue a bond for good behavior if s/he believes the safety of a person in the county is in danger of being injured.* \n \nA bond for good behavior requires the abuser (defendant) to post bond by giving money or property to the court to hold.  The abuser will lose this money or property if s/he violates the judge's order or commits a crime against you.**  The court may also find the abuser in contempt of court for violating an order.*** \n \nBonds for good behavior are not specifically designed for domestic abuse situations, but they can be useful if you need some protection from the court for a short period of time.  A bond for good behavior may be extended by the superior or state court for additional 60-day periods.**** \n \nIn a domestic abuse situation, you can only get one if a crime has occurred against you or your family.  This can include assault, battery, breaking and entering, trespass, etc.  You can call the magistrate court -- criminal division in your county for more information about what incidents would qualify for this type of action or you can ask a lawyer for legal advice.  Go to our GA Finding a Lawyer page for legal referrals. \n \n* O.C.G.A. § 17-6-90 \n \n** O.C.G.A. § 17-6-92 \n \n*** O.C.G.A. § 17-6-94 \n \n**** O.C.G.A. § 17-6-93", @"DVLawDetail9");
    
    TheLaw *dvLaw10 = [TheLaw new];
    dvLaw10.lawTitle = NSLocalizedString(@"Restraining Orders -- Bond for Good Behavior -- How can I get one?", @"DVLawTitle10");
    dvLaw10.lawDetail =  NSLocalizedString(@"Here's how you would go about getting a bond for good behavior: \n \nStep 1. Go to the magistrate court - criminal division in the county where the incident occurred. Tell the magistrate that you are interested in getting a bond for good behavior taken out on the abuser.  Be sure to bring any evidence or incident reports with you.  The magistrate will give you a pre-warrant application form. \n \nStep 2. Fill out the pre-warrant application form.  The magistrate may charge you a small fee for this application, but this fee can be waived in some situations.  You will have to swear that everything you have written is true and sign the forms in front of the magistrate or another court official. \n \nStep 3. The magistrate will take your application to the judge.  The judge will review the application.  The judge may want to ask you some questions. \n \nStep 4.  After reviewing your application, the judge will decide if there is enough evidence and information to have a hearing.  If there is not enough evidence, you will have to come back and start over if another incident occurs.  If there is enough evidence, the judge will set a hearing date and time, which will usually take place in 7 days. \n \nNote: If there is immediate danger to you or to your family, the judge may decide to issue an immediate absolute warrant and arrest the abuser immediately.  However, it is much more likely that the judge will just set a hearing date and time. \n \nStep 5. You must go to the hearing.  At the hearing, the judge will listen to you and to the abuser, and will look at all the evidence. Then the judge will make a decision.  There are three possible decisions: \n \nThe judge may decide that the evidence is so strong, and the situation so dangerous, that the abuser needs to be arrested.  In this case, the judge will issue a warrant for the abuser's arrest and take him/her immediately into custody. \n \nThe judge may decide that there is enough evidence to issue a bond for good behavior. (See next steps below.) \n \nThe judge may decide that there is not enough evidence to either issue a bond or to arrest the abuser.  In this case, the judge will just let the abuser leave, with no legal action taken. \n \nStep 6. If the judge decides to issue a bond for good behavior, then the abuser will be required to follow the orders set and written down by the judge for the duration of the bond. \n \nStep 7. The abuser will have to pay a certain amount of money to the court, or post bond in the form of property. The bond could be anywhere from a couple hundred dollars to several thousand dollars. \n \nStep 8. The bond for good behavior will last for up to 6 months, but can be renewed in 60 day increments.*  A judge has the discretion to extend it longer depending on the situation.  During the duration of the bond, the court will keep the money of the abuser.  If the abuser violates the judge's orders, or commits any crime against you, then the abuser will lose the money and can be arrested. \n \nStep 9. To renew a bond for good behavior, you must go back to the magistrate court -- criminal division and apply for a renewal. \n \nThe magistrate in the criminal division of your county will be able to help you with more specific information if you are interested in filing for a bond for good behavior or you can ask a lawyer for legal advice.   \n \n \n*O.C.G.A. § 17-6-93", @"DVLawDetail10");
    
    
    TheLaw *dvLaw11 = [TheLaw new];
    dvLaw11.lawTitle = NSLocalizedString(@"Restraining Orders -- Moving to Another State with a Family Violence Protection Order -- How do I know if my protection order is good under federal law?", @"DVLawTitle11");
    dvLaw11.lawDetail =  NSLocalizedString(@"A protective order is good anywhere in the United States as long as: \n \nIt was issued to prevent violent or threatening acts, harassing behavior, sexual violence, or it was issued to prevent another person from coming near you or contacting you.* \n \nThe court that issued the order had jurisdiction over the people and case. (In other words, the court had the authority to hear the case.) \n \nThe abuser received notice of the order and had an opportunity to go to court to tell his/her side of the story. \n \nIn the case of ex parte temporary and emergency orders, the abuser must receive notice and have an opportunity to go to court to tell his/her side of the story at a hearing that is scheduled before the temporary order expires.** \n \nNote: For information on enforcing a military protective order (MPO) off the military installation, or enforcing a civil protection order (CPO) on a military installation, please see our Military Protective Orders page. \n \n* 18 U.S.C. § 2266(5) \n \n** 18 U.S.C. § 2265(a) & (b)", @"DVLawDetail11");
    
    
    TheLaw *dvLaw12 = [TheLaw new];
    dvLaw12.lawTitle = NSLocalizedString(@"Restraining Orders -- Moving to Another State with a Family Violence Protection Order -- I have a temporary ex parte order. Can it be enforced in another state?", @"DVLawTitle12");
    dvLaw12.lawDetail =  NSLocalizedString(@"Yes. An ex parte temporary order can be enforced in other states as long as it meets the requirements listed in How do I know if my protection order is good under federal law?* \n \nNote: The state where you are going generally cannot extend your ex parte temporary order or issue you a permanent order when the temporary one expires. If you need to extend your temporary order, you will have to contact the state that issued the order and arrange to be at the hearing in person or by telephone (if that is an option offered by the court). However, you may be able to reapply for one in the new state that you are moving to if you meet the requirements for getting a protective order in that state – but, if you apply for one in a new state, the abuser would know what state you are living in, which may put you in danger. \n \n* 18 U.S.C. § 2265(b)(2)", @"DVLawDetail12");
    
    
    TheLaw *dvLaw13 = [TheLaw new];
    dvLaw13.lawTitle = NSLocalizedString(@"Restraining Orders -- Enforcing Your Out-of-State Order in GA -- Can I get my out-of-state protective order enforced in Georgia? What are the requirements?", @"DVLawTitle13");
    dvLaw13.lawDetail =  NSLocalizedString(@"Yes. Your protective order from another state can be enforced in Georgia as long as: \n \nIt was issued to prevent violent or threatening acts, harassing behavior, sexual violence, or it was issued to prevent another person from coming near you or contacting you.* \n \nThe court that issued the order had jurisdiction over the people and case. (In other words, the court had the authority to hear the case.) \n \nThe abuser received notice of the order and had an opportunity to go to court to tell his/her side of the story. \n \nIn the case of ex parte temporary and emergency orders, the abuser must receive notice and have an opportunity to go to court to tell his/her side of the story at a hearing that is scheduled before the temporary order expires.** \n \nNote: For information on enforcing a military protective order (MPO) off the military installation, or enforcing a civil protection order (CPO) on a military installation, please see our Military Protective Orders page. \n \n* 18 U.S.C. § 2266(5) \n \n** 18 U.S.C. § 2265(a) & (b)", @"DVLawDetail13");
    
    
    TheLaw *dvLaw14 = [TheLaw new];
    dvLaw14.lawTitle = NSLocalizedString(@"Restraining Orders -- Enforcing Your Out-of-State Order in GA -- What is the National Crime Information Center Registry? Who has access to it?", @"DVLawTitle14");
    dvLaw14.lawDetail =  NSLocalizedString(@"The National Crime Information Center Registry (NCIC) is a nationwide, electronic database used by law enforcement agencies in the U.S, Canada, and Puerto Rico. It is managed by the FBI and state law enforcement officials. \n \nAll law enforcement officials have access to it, but the information is encrypted so outsiders cannot access it.", @"DVLawDetail14");
    
    
    TheLaw *dvLaw15 = [TheLaw new];
    dvLaw15.lawTitle = NSLocalizedString(@"Restraining Orders -- Enforcing Your Out-of-State Order in GA -- Can I have my out-of-state protective order changed, extended, or canceled in GA?", @"DVLawTitle15");
    dvLaw15.lawDetail =  NSLocalizedString(@"No.  Only the state that issued your protective order can change, extend, or cancel the order.  You cannot have this done by a court in Georgia. \n \nTo have your order changed, extended, or canceled, you will have to file a motion or petition, notify your abuser, and attend a hearing in the court where the order was issued.  To find out more information about how to modify a restraining order, see the Restraining Order page for the state where your order was issued. \n \nIf your order does expire while you are living in Georgia, you may be able to get a new one issued in Georgia. but this may be difficult to do if no new incidents of abuse have occurred in Georgia.  To find out more information on how to get a protective order in Georgia.", @"DVLawDetail15");
    
    TheLaw *dvLaw16 = [TheLaw new];
    dvLaw16.lawTitle = NSLocalizedString(@"Restraining Orders -- Enforcing Your Out-of-State Order in GA -- What can I do if the court that issued my order tells GA that my order has changed or is no longer valid?", @"DVLawTitle16");
    dvLaw16.lawDetail =  NSLocalizedString(@"You will have to contact the court that issued your order to find out why your order has changed or is no longer valid.  The police in Georgia cannot enforce an order that has expired or has been canceled in the issuing state. \n \nIf this does happen, you may want to contact a lawyer or domestic violence organization in your area.  They may be able to answer some of your questions, or help you fill out the necessary court forms to petition for a new order in GA.  You will find information on legal assistance and domestic violence organizations in GA.", @"DVLawDetail16");
    
    TheLaw *dvLaw17 = [TheLaw new];
    dvLaw17.lawTitle = NSLocalizedString(@"Restraining Orders -- Enforcing Your Out-of-State Order in GA -- I was granted temporary custody with my protective order. Will I still have temporary custody of my children in GA?", @"DVLawTitle17");
    dvLaw17.lawDetail =  NSLocalizedString(@"Yes. As long as the child custody provision complies with certain federal laws,* Georgia can enforce a temporary custody order that is a part of a protection order. \n \nTo have someone read over your order and tell you if it meets these standards, contact a lawyer in your area. \n \n* The federal laws are the Uniform Child Custody Jurisdiction Act (UCCJA) or the Uniform Child Custody Jurisdiction and Enforcement Act (UCCJEA), and the Parental Kidnapping", @"DVLawTitleDetail17");
    
    TheLaw *dvLaw18 = [TheLaw new];
    dvLaw18.lawTitle = NSLocalizedString(@"Georgia -- State Custody Information -- How will a judge make a decision about custody?", @"DVLawTitle18");
    dvLaw18.lawDetail =  NSLocalizedString(@"Generally, the state of Georgia encourages a child to have continuing contact with both parents.* However, custody will be determined according to what the judge considers to be in the child’s best interest. The judge may consider any relevant factor including, but not limited to the: \n \nLove, affection, bonding, and emotional ties existing between the child and each parent, as well as his/her siblings, half siblings, and stepsiblings; \n \nAbility of each parent to give the child love, affection, and guidance and to continue raising and supporting the education of the child; \n \nEach parent's knowledge and familiarity of the child and the child's needs;\n \nAbility of each parent to provide the child with food, clothing, medical care, day-to-day needs, and other necessary basic care (Note: When looking at this, the judge will also take in consideration whether the other parent might provide child support); \n \nHome environment of each parent (focusing on whether the environment will allow for the nurturing and safety of the child, rather than superficial or material factors); \n \nImportance of continuity in the child's life and the length of time the child has lived in a stable environment; \n \nStability of each parent’s family and community support systems; \n \nMental and physical health of each parent (Note: The judge has the power to order a psychological or medical evaluation of the family);*1 \n \nEach parent's involvement in the child's educational, social, and extracurricular activities; \n \nEach parent's employment schedule (looking at how flexible the parent’s schedule is and what limitations exist, if any, to care for the child); \n \nHome, school, and community record and history of the child, as well as any health or educational special needs of the child; \n \nEach parent's ability to manage parenting responsibilities (both past and future); \n \nEach parent’s willingness and ability to encourage a close and continuing parent-child relationship with the other parent (if it is in the best interest of the child); \n \nAny recommendation by a court appointed custody evaluator or guardian ad litem (attorney or representative appointed for the child during the court case); \n \nAny evidence of family violence or sexual, mental, or physical child abuse or criminal history of either parent; and \n \nAny evidence of substance abuse by either parent.*2 \n \nWhen evidence of family violence is found, the judge will also take into consideration: \n \nthe safety and well-being of the child and of the parent who is the victim of family violence – this should be one of the judge’s main concerns; and \n \nthe abuser’s history of violence or of causing reasonable fear of violence to another person.*3 \n \nNote: For purposes of a custody decision, if a parent is absent or relocates because of domestic violence, this will not be considered child abandonment (assuming that the parent is away for what is considered to be a reasonable amount of time).*4 \n \n* O.C.G.A. § 19-9-3(d) \n \n*1 O.C.G.A. § 19-9-3(a)(7) \n \n*2 O.C.G.A. § 19-9-3(a)(3) \n \n*3 O.C.G.A. § 19-9-3(a)(4) \n \n*4 O.C.G.A. § 19-9-3(a)(4)(C)", @"DVLawDetail18");
    
    
    TheLaw *dvLaw19 = [TheLaw new];
    dvLaw19.lawTitle = NSLocalizedString(@"Georgia -- State Custody Information -- Once the judge makes a custody decision, can I find out why s/he made that decision?", @"DVLawTitle19");
    dvLaw19.lawDetail =  NSLocalizedString(@"Yes.  Before the end of the custody hearing, either parent can request that the custody order outline the specific reasons why the judge came to the final custody decision and which factors (listed above) were the determining factors.  If joint legal custody is awarded, the judge will also address issues affecting the child's education, health, extracurricular activities, religion, and any other important matters.  The order will be filed within 30 days of the final hearing, unless the judge orders otherwise, with the agreement of both parents.* \n \n* O.C.G.A. § 19-9-3(a)(8)", @"DVLawDetail19");
    
    
    TheLaw *dvLaw20 = [TheLaw new];
    dvLaw20.lawTitle = NSLocalizedString(@"Georgia -- State Custody Information -- At what age can my child decide who s/he wants to live with?", @"DVLawTitle20");
    dvLaw20.lawDetail =  NSLocalizedString(@"In cases involving children who are 14 years old or older, the child will have the right to select which parent s/he wants to live with. The child’s choice will be honored unless the judge determines it is not in the child’s best interest. If your custody order was decided before your child turned 14, you may be able to modify your custody order based on your child’s preference once s/he turns 14. So, for example, if you lost custody of your child when the child was 10 and now that your child is 14, s/he tells you s/he wants to live with you, you can file a petition to modify the custody order based on your child’s desire to live with you. If the judge believes it is in the child’s best interest to live with you, the judge might modify (change) the custody order. * \n \nIn cases where the child is between the ages of 11-13, the judge will consider who the child wants to live with; however, the judge will not necessarily honor this preference.** \n \n*O.C.G.A. § 19-9-3(a)(5) \n \n** O.C.G.A. § 19-9-3(a)(6)", @"DVLawDetail20");
    
    
    TheLaw *dvLaw21 = [TheLaw new];
    dvLaw21.lawTitle = NSLocalizedString(@"Georgia -- State Custody Information -- Can a parent who committed violence get custody or visitation?", @"DVLawTitle21");
    dvLaw21.lawDetail =  NSLocalizedString(@"Possibly, yes. The judge must take into consideration any evidence of family violence when making a custody decision. When evidence of family violence is found, the judge will also take into consideration the safety and well-being of the child and of the parent who is the victim of family violence – this should be one of the judge’s main concerns. The judge should also consider the abuser’s history of violence or of causing reasonable fear of violence to another person.*  However, there are many other factors that s/he will consider as well  - see How will a judge make a decision about custody?  Therefore, the fact that a parent committed family violence does not necessarily mean that s/he will be denied custody. \n \nVisitation or parenting time may be awarded to a parent who committed violence only if the judge believes that proper measures can be taken to ensure the safety of you and your child. Here are some things the judge could include in the visitation order: \n \nthat the transfer of your child (from one parent to another) take place in a protected setting; \n \nsupervised visitation by another person or agency (the abuser may be ordered to cover the cost of this); \n \nthat the abuser has to attend and complete a certified family violence intervention program; \n \nthat the abuser cannot drink or do drugs during the visitation and for twenty-four hours before the visitation; \n \nthat overnight visitation is not allowed; \n \nthat the abuser post a bond (money) for the return and safety of the child; and \n \nrequire any other condition that is considered necessary to provide for the safety of the child, the victim of violence, and any other household member.** \n \nWhether or not visitation or parenting time is allowed, the judge may order the address of the child and the victim of family violence to be kept confidential.*** \n \nNote: A judge will not order you to attend joint counseling with the abuser as a condition of receiving custody, visitation, or parenting time.**** \n \nIt is recommended that you seek legal advice from a lawyer to assist you in a custody case involving domestic violence issues. For information on how to find a lawyer see our GA Finding a Lawyer page. \n \n* O.C.G.A. § 19-9-3(a)(4) \n \n** O.C.G.A. § 19-9-7(a) \n \n*** O.C.G.A. § 19-9-7(b) \n \n**** O.C.G.A. § 19-9-7(c)", @"DVLawDetail21");
    
    
    TheLaw *dvLaw22 = [TheLaw new];
    dvLaw22.lawTitle = NSLocalizedString(@"Georgia -- State Custody Information -- If a custody / visitation order is already in place, can I get it changed?", @"DVLawTitle22");
    dvLaw22.lawDetail =  NSLocalizedString(@"Whether you will be able to change the custody / visitation order may depend on what part of the order you want to change. \n \nChanging the visitation/ parenting time portion: \n \nEither parent can go back to court to request to change to the visitation/ parenting time portion of the custody order at any time as long as a request is not made more often than once within a two-year period from the last custody decision. You do not need to show a change in circumstance to change the visitation/ parenting time portion of the custody order.* \n \nChanging the custody portion of the order: \n \nTo modify (change) the custody portion of the order, you will need to show that there has been a change in any material conditions or circumstances of either parent or the child. One possible change in circumstances could be a child’s preference to live with the non-custodial parent once the child turns 14.** See At what age can my child decide which parent s/he wants to live with? for more information on children’s custody preferences.  In addition, a military parent's absences because of his or her deployment (or possible future deployments) cannot be the only factor used to claim that there has been a change in material conditions or circumstances of either parent of the child. However, the judge may consider evidence of the effect of the deployment in determining if there has been a change in material conditions or circumstances of either parent or the child.* \n \nAfter a change of custody has been requested, the judge may temporarily change the terms of the custody order until a final custody decision is made by the judge.*** \n \n* O.C.G.A. § 19-9-3(b) \n \n** O.C.G.A. § 19-9-3(a)(5) \n \n*** O.C.G.A. § 19-9-3(e)", @"DVLawDetail22");
    
    
    TheLaw *dvLaw23 = [TheLaw new];
    dvLaw23.lawTitle = NSLocalizedString(@"Georgia -- State Custody Information -- Should I start a court case to ask for supervised visits?", @"DVLawTitle23");
    dvLaw23.lawDetail =  NSLocalizedString(@"If you are not comfortable with the abuser being alone with your child, you might be thinking about asking the judge to order that visits with your child be supervised. If you are already in court because the abuser filed for visitation or custody, you may not have much to lose by asking that the visits be supervised if you can present a valid reason for your request (although this may depend on your situation). \n \nHowever, if there is no current court case, please get legal advice BEFORE you start a court case to ask for supervised visits. We strongly recommend that you talk to an attorney who specializes in custody matters to find out what you would have to prove to get the visits supervised and how long supervised visits would last, based on the facts of your case. \n \nIn the majority of cases, supervised visits are only a temporary measure. Although the exact visitation order will vary by state, county, or judge, the judge might order a professional to observe the other parent on a certain amount of visits or the visits might be supervised by a relative for a certain amount of time -- and if there are no obvious problems, the visits may likely become unsupervised. Oftentimes, at the end of a case, the other parent ends up with more frequent and/ or longer visits than s/he had before you went into court or even some form of custody. \n \nIn some cases, to protect your child from immediate danger by the abuser, starting a case to ask for custody and supervised visits is appropriate. To find out what may be best in your situation, please go to GA Finding a Lawyer to seek out legal advice.", @"DVLawDetail23");
    
    
    TheLaw *dvLaw24 = [TheLaw new];
    dvLaw24.lawTitle = NSLocalizedString(@"Parental Kidnapping -- When the other parent wants to take your children out of the state -- I am afraid the other parent will take our children out of the state. What can I do?", @"DVLawTitle24");
    dvLaw24.lawDetail =  NSLocalizedString(@"If you are afraid that the other parent will take your children away without your consent, you might be able to ask the judge to issue an emergency custody order, which most states provide.  You may want to ask the judge to include in the order that the other parent cannot take the children out of the state, or that the other parent may only have supervised visitation.  Please see Can I get temporary emergency custody? for more information as to what factors a judge might consider when deciding whether or not to grant emergency custody.  You can also go to the Custody section of your state for more information. \n \nDepending on your state's restraining order laws, a threat to take your child and leave the state might also possibly qualify you for a restraining order.  You can read more about your state's laws on our Restraining Orders.", @"DVLawDetail24");
    
    
    TheLaw *dvLaw25 = [TheLaw new];
    dvLaw25.lawTitle = NSLocalizedString(@"Parental Kidnapping -- When the other parent wants to take your children out of the state -- If the other parent takes my children out of state, can s/he be charged with kidnapping?", @"DVLawTitle25");
    dvLaw25.lawDetail =  NSLocalizedString(@"The answer to this question is very complicated and may depend on many different factors.  The laws on parental kidnapping (also known as custodial interference) are different in each state.  In some states, it may be against the law to take children out of state only if it violates a custody order or if there is an active custody case pending.  In other states, the act of taking the children out of state itself may not be illegal unless the parent conceals (hides) the children from the other parent.  Other factors that may be considered are whether the parents are married (and considered to have equal parental rights) or, in the case of unmarried parents, whether the father's paternity has been legally established.  Also, there could be a big difference if the other parent is planning a brief visit out of state, a long absence, or if s/he is planning on moving out of state for a long time.  We strongly suggest talking to a lawyer who specializes in custody matters and/or a prosecutor to find out if the other parent's actions are legal or not.", @"DVLawDetail25");
    
    
    TheLaw *dvLaw26 = [TheLaw new];
    dvLaw26.lawTitle = NSLocalizedString(@"Divorce -- What are the basic steps for filing for divorce?", @"DVLawTitle26");
    dvLaw26.lawDetail =  NSLocalizedString(@"While divorce laws vary by state, here are the basic steps that a person may have to follow in most states: \n \nFirst, you or your spouse must meet the residency requirements of the state you want to file in. \n \nSecond, you must have “grounds” (a legally acceptable reason) to end your marriage, which may include a no-fault ground such as irreconcilable differences. \n \nThird, you must file the appropriate divorce papers and have copies sent to your spouse - for the exact rules for serving the papers, contact your local courthouse or an attorney. \n \nFourth, if your spouse disagrees with anything in the divorce papers, then s/he will have the opportunity to file papers telling her/his side.  This may be called “contesting the divorce.”  If s/he contests it, then you may have a series of court appearances to sort the issues out.  If your spouse does not disagree with anything, then s/he may sign the appropriate divorce papers and send them back to you and/or the court (depending on your state).  If your spouse agrees with everything and signs the papers, this may be called an “uncontested divorce.”  Also, if a certain period of time passes and your spouse does not sign the papers or file any papers of his/her own, you may be able to proceed with the divorce as an uncontested divorce anyway. (Speak to a lawyer in your state about how long you have to wait to see if your spouse answers before you can continue with the divorce). \n \nFifth, if there is property, assets, a pension, debts, or anything else that you need divided, or if you need financial support from your spouse, then these issues may have to be dealt with during the divorce or else you may lose your chance to deal with these issues.   The issues may be worked out during settlement negotiations and incorporated into the divorce decree or in a series of court hearings during the divorce.  Custody may also be decided as part of your divorce.", @"DVLawDetail26");
    
    
    TheLaw *dvLaw27 = [TheLaw new];
    dvLaw27.lawTitle = NSLocalizedString(@"Georgia -- Crime -- What are some crimes that the abuser may have committed?", @"DVLawTitle27");
    dvLaw27.lawDetail =  NSLocalizedString(@"Even if you do not qualify for a family violence protection order or a stalking protective order, the abuser may have committed a crime.  If you call the police, they may arrest him/her for a crime and you may get a restraining order through the criminal court.  Remember that even if you do have a protection order or a protective order, you can still report him/her to the police if you believe s/he committed a crime against you.", @"DVLawDetail27");
    
    
    TheLaw *dvLaw28 = [TheLaw new];
    dvLaw28.lawTitle = NSLocalizedString(@"Georgia -- Crime -- If I am the victim of a crime, where can I get additional help in Georgia?", @"DVLawTitle28");
    dvLaw28.lawDetail =  NSLocalizedString(@"The Georgia Criminal Justice Coordinating Council assists eligible victims of crimes with medical, funeral, crime scene clean-up and mental health counseling expenses.  Here is a link to their application for financial assistance.  In addition, if applicable, victims may also apply for lost wages or loss of support benefits. \n \nThe State Board of Pardons and Paroles offers victim services including a service called V.I.P., which is a 24 hour automated information system used by the Georgia Department of Corrections in partnership with the State Board of Pardons and Paroles to provide victims of crime and/or their families with access to information about their offender.  By simply picking up a telephone and dialing the toll-free V.I.P. number - (800) 593-9474 - information regarding custody status of an inmate can be obtained. \n \nYou may learn more about crimes by calling your local police department, sheriff's department, or district attorney's office.", @"DVLawDetail28");
    
    
    theLaw = [NSArray arrayWithObjects:dvLaw0, dvLaw1, dvLaw2, dvLaw3, dvLaw4, dvLaw5, dvLaw6, dvLaw7, dvLaw8, dvLaw9, dvLaw10, dvLaw11, dvLaw12, dvLaw13, dvLaw14, dvLaw15, dvLaw16, dvLaw17, dvLaw18, dvLaw19, dvLaw20, dvLaw21, dvLaw22, dvLaw23, dvLaw24, dvLaw25, dvLaw26, dvLaw27, dvLaw28, nil];
    
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
    return [theLaw count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    TheLaw *law = [theLaw objectAtIndex:indexPath.row];
    cell.textLabel.text = law.lawTitle;
    cell.textLabel.numberOfLines=0;
    cell.textLabel.font=[UIFont fontWithName:@"Georgia-Bold" size:14];

    
    return cell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DVLawDetailSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DVDetailLawViewController *DVController = segue.destinationViewController;
        DVController.dvLaw = [theLaw objectAtIndex:indexPath.row];
    }
}

@end
