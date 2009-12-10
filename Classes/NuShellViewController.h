#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface NuShellViewController : UIViewController {
    IBOutlet id inputTextField;
    IBOutlet id resultTextView;
}
- (IBAction)onPushEval:(id)sender;
@end
