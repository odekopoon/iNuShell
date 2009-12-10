//
//  NuShellAppDelegate.h
//  NuShell
//
//  Created by Yuumi Yoshida on 09/11/28.
//  Copyright EY-Office 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NuShellViewController;

@interface NuShellAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    NuShellViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet NuShellViewController *viewController;

@end

