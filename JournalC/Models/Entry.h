//
//  Entry.h
//  JournalC
//
//  Created by Drew Seeholzer on 7/1/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* bodyText;
@property (nonatomic, copy) NSDate* timeStamp;

-(instancetype)initWithTitle:(NSString *)title
                    bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
