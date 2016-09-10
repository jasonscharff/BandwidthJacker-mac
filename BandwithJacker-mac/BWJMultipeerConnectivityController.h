//
//  BWJMultipeerConnectivityController.h
//  BandwithJacker-mac
//
//  Created by Jason Scharff on 9/9/16.
//  Copyright © 2016 Jason Scharff. All rights reserved.
//

#import <Foundation/Foundation.h>

@import AppKit;

@class MCBrowserViewController;

@interface BWJMultipeerConnectivityController : NSObject

+ (instancetype)sharedMultipeerConnectivityController;
- (NSViewController *)browserViewController;

@end
