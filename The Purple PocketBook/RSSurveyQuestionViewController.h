//
//  RSSurveyQuestionViewController.h
//  RelationshipSurvey
//
//  Created by Rusty Zarse on 1/28/14.
//
//

#import <UIKit/UIKit.h>

@interface RSSurveyQuestionViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *questionTextBox;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
- (IBAction)answerButtonClicked:(id)sender;

@end
