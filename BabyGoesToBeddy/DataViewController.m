//
//  DataViewController.m
//  BabyGoesToBeddy
//
//  Created by Andrew Melis on 4/10/13.
//  Copyright (c) 2013 Baller Status Inc. All rights reserved.
//

#import "DataViewController.h"


@interface DataViewController ()

@end

@implementation DataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.pageLabel.text = [self.dataObject description];
//    self.pagePicture.image = [UIImage imageNamed:@"1 kathy + jake stroller.jpg"];
    self.pagePicture.image = _dataObject2;
    
    //if statement to add correct picture?
//    if 

}

@end
