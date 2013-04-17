//
//  DataViewController.m
//  BabyGoesToBeddy
//
//  Created by Andrew Melis on 4/10/13.
//  Copyright (c) 2013 Baller Status Inc. All rights reserved.
//

#import "DataViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>


@interface DataViewController ()

@end

@implementation DataViewController

@synthesize player, pagePicture;

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
    
    self.pageLabel.text = [self.dataLabel description];
    self.pagePicture.image = _dataImage;
    
}

//animation
- (void) viewDidAppear:(BOOL)animated {

    if([_pageLabel.text isEqual: @"Bye bye!"]) {        //if it's the last page -- better way to mark this?
        [UIView animateWithDuration:5 animations:^{
            pagePicture.alpha = .001;
        }];
    }
}

- (IBAction)soundButton:(UIButton *)sender {
    
    NSURL *pathAsURL = _dataSound;
    
    //this part from http://gabriel-tips.blogspot.com/2012/07/how-to-play-audio-files-using.html
    //and http://stackoverflow.com/questions/13495298/how-do-i-make-a-button-play-a-sound-in-xcode-4-5-2
    
    // Init the audio player.
    NSError *error;
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:pathAsURL error:&error];
    [player play];
}
@end
