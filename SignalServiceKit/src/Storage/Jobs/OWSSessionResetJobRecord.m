//
//  Copyright (c) 2021 Open Whisper Systems. All rights reserved.
//

#import "OWSSessionResetJobRecord.h"
#import "TSContactThread.h"

NS_ASSUME_NONNULL_BEGIN

@implementation OWSSessionResetJobRecord

- (instancetype)initWithContactThread:(TSContactThread *)contactThread label:(NSString *)label
{
    self = [super initWithLabel:label];
    if (!self) {
        return self;
    }

    _contactThreadId = contactThread.uniqueId;

    return self;
}

- (nullable instancetype)initWithCoder:(NSCoder *)coder
{
    return [super initWithCoder:coder];
}

// --- CODE GENERATION MARKER

// This snippet is generated by /Scripts/sds_codegen/sds_generate.py. Do not manually edit it, instead run `sds_codegen.sh`.

// clang-format off

- (instancetype)initWithGrdbId:(int64_t)grdbId
                      uniqueId:(NSString *)uniqueId
      exclusiveProcessIdentifier:(nullable NSString *)exclusiveProcessIdentifier
                    failureCount:(NSUInteger)failureCount
                           label:(NSString *)label
                          sortId:(unsigned long long)sortId
                          status:(SSKJobRecordStatus)status
                 contactThreadId:(NSString *)contactThreadId
{
    self = [super initWithGrdbId:grdbId
                        uniqueId:uniqueId
        exclusiveProcessIdentifier:exclusiveProcessIdentifier
                      failureCount:failureCount
                             label:label
                            sortId:sortId
                            status:status];

    if (!self) {
        return self;
    }

    _contactThreadId = contactThreadId;

    return self;
}

// clang-format on

// --- CODE GENERATION MARKER

@end

NS_ASSUME_NONNULL_END
