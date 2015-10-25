//
//  PPAppDelegate.h
//  The Pevo
//
//  Created by Alicia MacBook Pro on 1/13/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


@class RSStateManager;

@interface PPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSURL *)applicationDocumentsDirectory;

@end
