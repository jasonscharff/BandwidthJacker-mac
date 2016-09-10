//
//  BWJSessionManager.m
//  BandwithJacker
//
//  Created by Jason Scharff on 9/10/16.
//  Copyright © 2016 Jason Scharff. All rights reserved.
//

#import "BWJHTTPSessionManager.h"

@implementation BWJHTTPSessionManager

+ (instancetype)sharedManager {
    static dispatch_once_t once;
    static BWJHTTPSessionManager *_sharedInstance;
    dispatch_once(&once, ^{
        _sharedInstance = [[self alloc] init];
    });
    
    return _sharedInstance;
}

- (instancetype)init {
    NSURL *url = [NSURL URLWithString:@"http://10.251.91.132:5000/"];
    self = [super initWithBaseURL:url];
    if(self) {
        AFJSONRequestSerializer *serializer = [AFJSONRequestSerializer serializer];
        [serializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        [serializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [self setRequestSerializer:serializer];
    }
    return self;
}

@end
