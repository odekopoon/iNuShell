#import "EvalNu.h"
#import "Nu.h"

static EvalNu *sharedEvalNuDelegate = nil;

@implementation EvalNu

- (void)initNu {
	void NuInit();
	NuInit();
	parser = [Nu parser];
}


- (NSString*)eval:(NSString*)expression {
	NSString *value;
	@try {
		value = [parser parseEval:expression];
	} @catch (id exception) {
		value = [NSString stringWithFormat:@"%@: %@", [exception name], [exception reason]];
	}
	return value;
}


// http://blog.quazie.net/2009/04/sharedinstance-objective-cs-singleton-paradigm/

+ (EvalNu *)sharedInstance {
	@synchronized(self) {
		if (sharedEvalNuDelegate == nil) {
			[[self alloc] init]; // assignment not done here
		}
	}
	return sharedEvalNuDelegate;
}

+ (id)allocWithZone:(NSZone *)zone {
	@synchronized(self) {
		if (sharedEvalNuDelegate == nil) {
			sharedEvalNuDelegate = [super allocWithZone:zone];
			// assignment and return on first allocation
			return sharedEvalNuDelegate;
		}
	}
	// on subsequent allocation attempts return nil
	return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
	return self;
}

- (id)retain {
	return self;
}

- (unsigned)retainCount {
	return UINT_MAX;  // denotes an object that cannot be released
}

- (void)release {
	//do nothing
}

- (id)autorelease {
	return self;
}

@end
