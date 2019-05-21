//
//  WILDeck.h
//  DeckOfOneCardObjC
//
//  Created by William Moody on 5/21/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WILCard;

NS_ASSUME_NONNULL_BEGIN

@interface WILDeck : NSObject

@property (nonatomic, strong, readonly)NSString *imageUrl;

- (instancetype)initWithImage:(NSString*)imageUrl;

-(instancetype)initWithDictionary: (NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END
