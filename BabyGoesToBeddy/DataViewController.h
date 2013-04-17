//
//  DataViewController.h
//  BabyGoesToBeddy
//
//  Created by Andrew Melis on 4/10/13.
//  Copyright (c) 2013 Baller Status Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *pageLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pagePicture;

@property (strong, nonatomic) id dataObject;

@end
