//
//  ShelterSearchTableViewCell.h
//  the Pevo
//
//  Created by Alicia MacBook Pro on 3/19/14.
//  Copyright (c) 2014 Alicia MacBook Pro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShelterSearchTableViewCell : UITableViewCell


@property (nonatomic, weak) IBOutlet UILabel *cityLabel;
@property (nonatomic, weak) IBOutlet UILabel *shelterLabel;


@property (weak, nonatomic) IBOutlet UITextView *hotlineNumber;


@end
