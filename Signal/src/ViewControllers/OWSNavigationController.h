//
//  Copyright (c) 2017 Open Whisper Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

// Any view controller which wants to be able cancel back button
// presses and back gestures should implement this protocol.
@protocol OWSNavigationView <NSObject>

- (BOOL)shouldCancelNavigationBack;

@end

#pragma mark -

// This navigation controller subclass should be used anywhere we might
// want to cancel back button presses or back gestures due to, for example,
// unsaved changes.
@interface OWSNavigationController : UINavigationController

@end
