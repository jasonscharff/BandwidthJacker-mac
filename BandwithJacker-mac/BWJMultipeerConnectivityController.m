//
//  BWJMultipeerConnectivityController.m
//  BandwithJacker-mac
//
//  Created by Jason Scharff on 9/9/16.
//  Copyright © 2016 Jason Scharff. All rights reserved.
//

#import "BWJMultipeerConnectivityController.h"

@import MultipeerConnectivity;

static NSString * const kBWJMultipeerConnectivityServiceType = @"bwj-mpc-service";

@interface BWJMultipeerConnectivityController()

@property (nonatomic) MCNearbyServiceBrowser *serviceBrowser;
@property (nonatomic) MCPeerID *peerID;
@property (nonatomic) MCSession *session;

@end

@implementation BWJMultipeerConnectivityController

+ (instancetype)sharedMultipeerConnectivityController {
    static dispatch_once_t onceToken;
    static BWJMultipeerConnectivityController *_sharedInstance;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if(self) {
        NSString *computerName = [[NSHost currentHost] localizedName];
        self.peerID = [[MCPeerID alloc]initWithDisplayName:computerName];
        self.session = [[MCSession alloc]initWithPeer:self.peerID
                                     securityIdentity:nil
                                 encryptionPreference:MCEncryptionNone];
        self.serviceBrowser = [[MCNearbyServiceBrowser alloc]initWithPeer:self.peerID
                                                              serviceType:kBWJMultipeerConnectivityServiceType];
    }
    return self;
}

-(MCBrowserViewController *)browserViewController {
    MCBrowserViewController *browserVC = [[MCBrowserViewController alloc]initWithBrowser:self.serviceBrowser
                                                                                 session:self.session];
    return browserVC;
}


@end
