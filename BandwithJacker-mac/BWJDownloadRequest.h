//
//  BWJDownloadRequest.h
//  BandwithJacker-mac
//
//  Created by Jason Scharff on 9/10/16.
//  Copyright © 2016 Jason Scharff. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BWJDownloadRequest : NSObject

- (instancetype)initWithDictionary : (NSDictionary *)dictionary;

@property (nonatomic) NSString *serverID;
@property (nonatomic) NSString *filename;
@property (nonatomic) NSURL *requestURL;
@property (nonatomic) NSArray *byteRanges;

@end
