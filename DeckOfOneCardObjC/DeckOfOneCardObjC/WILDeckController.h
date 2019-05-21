//
//  WILDeckController.h
//  DeckOfOneCardObjC
//
//  Created by William Moody on 5/21/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WILDeck.h"

NS_ASSUME_NONNULL_BEGIN

@interface WILDeckController : NSObject


+ (void)fetchCard:(void (^) (WILDeck * _Nullable))completion;

+ (void)fetchImageWithUrlString:(NSString *)urlString completion: (void (^) (UIImage * _Nullable))completion;

@end

NS_ASSUME_NONNULL_END
