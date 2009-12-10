//
//  NuShellAppDelegate.m
//  NuShell
//
//  Created by Yuumi Yoshida on 09/11/28.
//  Copyright EY-Office 2009. All rights reserved.
//

#import "NuShellAppDelegate.h"
#import "NuShellViewController.h"

@implementation NuShellAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
