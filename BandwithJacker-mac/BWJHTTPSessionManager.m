//
//  BWJSessionManager.m
//  BandwithJacker
//
//  Created by Jason Scharff on 9/10/16.
//  Copyright © 2016 Jason Scharff. All rights reserved.
//

#import "BWJHTTPSessionManager.h"

#import "BWJDownloadRequest.h"

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
    NSURL *url = [NSURL URLWithString:@"http://bandwith.andrewaday.me/"];
    self = [super initWithBaseURL:url];
    if(self) {
        AFJSONRequestSerializer *serializer = [AFJSONRequestSerializer serializer];
        [serializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        [serializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [self setRequestSerializer:serializer];
    }
    return self;
}

//URL should be validated before this.
- (void)downloadItemAtURL : (NSURL * )url
           numberOfDevices: (int)numberOfDevices {
    
    NSString *path = [NSString stringWithFormat:@"partition/%@/%i", url.absoluteString, numberOfDevices];
    
    [self GET:path parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        BWJDownloadRequest *request = [[BWJDownloadRequest alloc]initWithDictionary:responseObject];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
}

@end
