//
//  EntryController.h
//  JournalC
//
//  Created by Drew Seeholzer on 7/1/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

+ (instancetype)sharedInstance;

@property (nonatomic, strong) NSMutableArray* entries;

- (void)addEntry:(NSString *)title bodyText:(NSString *)bodyText;
- (void)removeEntry:(Entry *)entry;
- (void)updateEntry:(Entry *)entry title:(NSString *)title bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
