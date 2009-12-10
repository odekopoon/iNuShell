#import "NuShellViewController.h"
#import "EvalNu.h"


@implementation NuShellViewController

- (void)viewWillAppear:(BOOL)animated {
	[inputTextField becomeFirstResponder];
}

- (IBAction)onPushEval:(id)sender {
	
	NSString *e = [inputTextField text];
	NSString *s = [NSString stringWithFormat:@"> %@\n%@\n%@", 
				   e,
				   [[EvalNu sharedInstance] eval:e],
				   [resultTextView text]];
	
	[resultTextView setText:s];
	[inputTextField setText:@""]; 
	
}
@end
