//
//  CreditsViewController.h
//  BabyGoesToBeddy
//
//  Created by Andrew Melis on 4/14/13.
//  Copyright (c) 2013 Baller Status Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreditsViewController : UITableViewController
@property (strong, nonatomic) NSArray *creditsArray;

@end

@interface CreditsCell : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *role;

@end
