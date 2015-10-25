//
//  WebsitesViewController.h
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/23/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FindHelpTableViewController.h"


@interface WebsitesViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (retain) NSString *site;


@end
