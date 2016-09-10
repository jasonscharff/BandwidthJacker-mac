//
//  BWJDownloadRequest.m
//  BandwithJacker-mac
//
//  Created by Jason Scharff on 9/10/16.
//  Copyright © 2016 Jason Scharff. All rights reserved.
//

#import "BWJDownloadRequest.h"

@implementation BWJDownloadRequest

- (instancetype)initWithDictionary : (NSDictionary *)dictionary {
    self = [super init];
    if(self) {
        
    }
    return self;
}

- (void)setupWithDictionary : (NSDictionary *)dictionary {
    self.serverID = dictionary[@"_id"];
    self.filename = dictionary[@"filename"];
    self.requestURL = [NSURL URLWithString:dictionary[@"url"]];
    NSArray *byteRangesArray = dictionary[@"ranges"];
    self.byteRanges = byteRangesArray;
}

@end
