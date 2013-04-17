//
//  ModelController.m
//  BabyGoesToBeddy
//
//  Created by Andrew Melis on 4/10/13.
//  Copyright (c) 2013 Baller Status Inc. All rights reserved.
//

#import "ModelController.h"

#import "DataViewController.h"

/*
 A controller object that manages a simple model -- a collection of month names.
 
 The controller serves as the data source for the page view controller; it therefore implements pageViewController:viewControllerBeforeViewController: and pageViewController:viewControllerAfterViewController:.
 It also implements a custom method, viewControllerAtIndex: which is useful in the implementation of the data source methods, and in the initial configuration of the application.
 
 There is no need to actually create view controllers for each page in advance -- indeed doing so incurs unnecessary overhead. Given the data model, these methods create, configure, and return a new view controller on demand.
 */

@interface ModelController()
@property (readonly, strong, nonatomic) NSArray *pageLabels;
@property (readonly, strong, nonatomic) NSArray *pageImages;

@end

@implementation ModelController

- (id)init
{
    self = [super init];
    if (self) {
        // Create the data model.
//        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//        _pageData = [[dateFormatter monthSymbols] copy];
//        
        //my try
        _pageLabels = [NSArray arrayWithObjects:
                     @"This is Jack and Baby Jimmy,",               //pg 1
                     @"and here are Kathy and Jake.",               //pg 2
                     @"The family went out to the park",            //pg 3
                     @"but it's getting too hot and sunny!",        //pg 4
                     @"Time to run through the sprinkler!",         //pg 5
                     @"Oh no! Mommy got all wet!",                  //pg 6
                     @"Boy, that was fun",                          //pg 7
                     @"But we sure need some snacks!",              //pg 8
                     @"Bye bye!",                                   //pg 9
                     nil];
        
        _pageImages =[[NSArray alloc] initWithObjects:
                     [UIImage imageNamed:@"2 jack + jimmy.jpg"],
                     [UIImage imageNamed:@"1 kathy + jake stroller.jpg"],
                     [UIImage imageNamed:@"3 jimmy ball.jpg"],
                     [UIImage imageNamed:@"4 jake sunglasses.jpg"],
                     [UIImage imageNamed:@"5 kids sprinkler.jpg"],
                     [UIImage imageNamed:@"6 both + kathy pool.jpg"],
                     [UIImage imageNamed:@"7 jake cheetos.jpg"],
                     [UIImage imageNamed:@"8 jimmy cake.jpg"],
                     [UIImage imageNamed:@"9 family lake.jpg"],
                     nil];
    
    }
    return self;
}

- (DataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard
{   
    // Return the data view controller for the given index.
    
    //this if is for broken cases
    if (([self.pageLabels count] == 0) || (index >= [self.pageLabels count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    DataViewController *dataViewController = [storyboard instantiateViewControllerWithIdentifier:@"DataViewController"];
    dataViewController.dataLabel = self.pageLabels[index];
    dataViewController.dataImage = self.pageImages[index];
    
    return dataViewController;
}

- (NSUInteger)indexOfViewController:(DataViewController *)viewController
{   
     // Return the index of the given data view controller.
     // For simplicity, this implementation uses a static array of model objects and the view controller stores the model object; you can therefore use the model object to identify the index.
    return [self.pageLabels indexOfObject:viewController.dataLabel];
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(DataViewController *)viewController];
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(DataViewController *)viewController];
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.pageLabels count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

@end
