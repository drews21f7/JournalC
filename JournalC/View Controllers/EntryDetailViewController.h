//
//  EntryDetailViewController.h
//  JournalC
//
//  Created by Drew Seeholzer on 7/1/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"


NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController

@property (strong, nonatomic) Entry * entry;

//-(void)updateWith:(Entry *)entry;

@end

NS_ASSUME_NONNULL_END
