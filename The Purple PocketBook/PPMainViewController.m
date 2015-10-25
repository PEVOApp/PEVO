//
//  PPMainViewController.m
//  the Pevo
//
//  Created by Alicia MacBook Pro on 2/5/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import "PPMainViewController.h"
#import "SWRevealViewController.h"
#import <MessageUI/MessageUI.h>



@interface PPMainViewController ()<MFMessageComposeViewControllerDelegate>

@end

@implementation PPMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}


- (void)motionBegan:(UIEventSubtype)motion
          withEvent:(UIEvent *)event {
    
    
    if(event.type == UIEventSubtypeMotionShake)
    {
        NSLog(@"shake started");
        [self showSMS];
    }
    
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
    if(event.type == UIEventSubtypeMotionShake)
    {
        NSLog(@"shake finish");
    }

}

-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult) result
{
    switch (result) {
        case MessageComposeResultCancelled:
            break;
            
        case MessageComposeResultFailed:
        {
            UIAlertView *warningAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Failed to send SMS!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [warningAlert show];
            break;
        }
            
        case MessageComposeResultSent:
            break;
            
        default:
            break;
   }

    [self dismissViewControllerAnimated:YES completion:nil];
}


//PULLED THIS CODE FROM :http://www.appcoda.com/ios-programming-send-sms-text-message/

-(void)showSMS {
    
    if(![MFMessageComposeViewController canSendText]) {
        UIAlertView *warningAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Your device doesn't support SMS!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [warningAlert show];
        return;
    }
    
    NSArray *recipents = @[@"555-555-5555"];
  

    MFMessageComposeViewController *messageController = [[MFMessageComposeViewController alloc] init];
    messageController.messageComposeDelegate = self;
    [messageController setRecipients:recipents];
    [messageController setBody:@"Contact Me ASAP"];
    
     //Present message view controller on screen
    [self presentViewController:messageController animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    
    self.nationalHotline.dataDetectorTypes = UIDataDetectorTypePhoneNumber;
    
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindToMainViewController:(UIStoryboardSegue *)unwindSegue
{
}

@end
