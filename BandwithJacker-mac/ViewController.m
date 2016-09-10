//
//  ViewController.m
//  BandwithJacker-mac
//
//  Created by Jason Scharff on 9/9/16.
//  Copyright © 2016 Jason Scharff. All rights reserved.
//

#import "ViewController.h"

#import "BWJMultipeerConnectivityController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //For now let's just show the browser vc.
    
    NSViewController *vc = [[BWJMultipeerConnectivityController sharedMultipeerConnectivityController]browserViewController];
    [self presentViewControllerAsModalWindow:vc];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
