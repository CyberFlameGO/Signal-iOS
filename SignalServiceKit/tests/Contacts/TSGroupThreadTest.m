//
//  Copyright (c) 2021 Open Whisper Systems. All rights reserved.
//

#import "TSGroupThread.h"
#import "SSKBaseTestObjC.h"

NS_ASSUME_NONNULL_BEGIN

@interface TSGroupThreadTest : SSKBaseTestObjC

@end

@implementation TSGroupThreadTest

- (void)testHasSafetyNumbers
{
    TSGroupThread *groupThread = [[TSGroupThread alloc] initWithDictionary:@{} error:nil];
    XCTAssertFalse(groupThread.hasSafetyNumbers);
}

@end

NS_ASSUME_NONNULL_END
