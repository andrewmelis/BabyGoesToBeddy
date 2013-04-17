//
//  DataViewController.h
//  BabyGoesToBeddy
//
//  Created by Andrew Melis on 4/10/13.
//  Copyright (c) 2013 Baller Status Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface DataViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *pageLabel;
@property (strong, nonatomic) IBOutlet UIImageView *pagePicture;

@property (strong, nonatomic) id dataLabel;
@property (strong, nonatomic) id dataImage;
@property (strong, nonatomic) id dataSound;


//audio hints from http://gabriel-tips.blogspot.com/2012/07/how-to-play-audio-files-using.html
// Declare an object for the audio player.
@property (nonatomic, retain) AVAudioPlayer *player;

- (IBAction)soundButton:(UIButton *)sender;
@end
