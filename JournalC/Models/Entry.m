//
//  Entry.m
//  JournalC
//
//  Created by Drew Seeholzer on 7/1/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText {
    
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timeStamp = [NSDate new];
    }
    return self;
}

@end
