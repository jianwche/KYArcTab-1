//
//  ArcTabViewController.m
//  KYArcTabDemo
//
//  Created by Kjuly on 1/9/13.
//  Copyright (c) 2013 Kjuly. All rights reserved.
//

#import "ArcTabViewController.h"

@interface ArcTabViewController () {
 @private
  UIViewController * viewControllerOne_,
                   * viewControllerTwo_,
                   * viewControllerThree_,
                   * viewControllerFour;
}

@property (nonatomic, retain) UIViewController * viewControllerOne,
                                               * viewControllerTwo,
                                               * viewControllerThree,
                                               * viewControllerFour;

@end


@implementation ArcTabViewController

@synthesize viewControllerOne   = viewControllerOne_,
            viewControllerTwo   = viewControllerTwo_,
            viewControllerThree = viewControllerThree_,
            viewControllerFour  = viewControllerFour_;

- (void)dealloc {
  self.viewControllerOne =
    self.viewControllerTwo =
    self.viewControllerThree =
  self.viewControllerFour = nil;
  [super dealloc];
}

- (id)init {
  if (self = [super init]) {
    [self setTitle:@"KYArcTab"];
    
    // Set View Frame
    self.viewFrame = (CGRect){CGPointZero, {kKYViewWidth, kKYViewHeight}};
    
    // Add child view controllers to each tab
    viewControllerOne_   = [[UIViewController alloc] init];
    viewControllerTwo_   = [[UIViewController alloc] init];
    viewControllerThree_ = [[UIViewController alloc] init];
    viewControllerFour_  = [[UIViewController alloc] init];
    
    // Set child views' Frame
    CGRect childViewFrame = self.viewFrame;
    [viewControllerOne_.view   setFrame:childViewFrame];
    [viewControllerTwo_.view   setFrame:childViewFrame];
    [viewControllerThree_.view setFrame:childViewFrame];
    [viewControllerFour_.view  setFrame:childViewFrame];
    
    // Set child views' background color
    [viewControllerOne_.view   setBackgroundColor:[UIColor grayColor]];
    [viewControllerTwo_.view   setBackgroundColor:[UIColor redColor]];
    [viewControllerThree_.view setBackgroundColor:[UIColor greenColor]];
    [viewControllerFour_.view  setBackgroundColor:[UIColor blueColor]];
    
    // Add child views as tab bar items
    self.tabBarItems = @[@{@"image"          : kPMINTabBarItemPMDetailInfo,
                           @"viewController" : viewControllerOne_},
                         @{@"image"          : kPMINTabBarItem6PMsDetailMemo,
                           @"viewController" : viewControllerTwo_},
                         @{@"image"          : kPMINTabBarItem6PMsDetailSkill,
                           @"viewController" : viewControllerThree_},
                         @{@"image"          : kPMINTabBarItem6PMsDetailMove,
                           @"viewController" : viewControllerFour_}];
  }
  return self;
}

- (void)didReceiveMemoryWarning {
  // Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];
  
  // Release any cached data, images, etc that aren't in use.
}

@end