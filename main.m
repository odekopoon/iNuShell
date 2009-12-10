#import <UIKit/UIKit.h>
#import "EvalNu.h"

int main(int argc, char *argv[]) {

	[[EvalNu sharedInstance] initNu];

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
