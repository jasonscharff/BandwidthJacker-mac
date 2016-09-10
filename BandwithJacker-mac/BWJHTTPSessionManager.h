//
//  BWJSessionManager.h
//  BandwithJacker
//
//  Created by Jason Scharff on 9/10/16.
//  Copyright © 2016 Jason Scharff. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface BWJHTTPSessionManager : AFHTTPSessionManager

+ (instancetype)sharedManager;
- (void)downloadItemAtURL : (NSURL * )url
           numberOfDevices: (int)numberOfDevices;

@end
