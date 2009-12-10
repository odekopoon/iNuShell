#import <Foundation/Foundation.h>
#import "Nu.h"


@interface EvalNu : NSObject 
{
	id<NuParsing> parser;
}

+ (EvalNu *)sharedInstance;
- (void)initNu;
- (NSString*)eval:(NSString*)expression;	

@end
