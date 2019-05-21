//
//  WILDeck.m
//  DeckOfOneCardObjC
//
//  Created by William Moody on 5/21/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import "WILDeck.h"

@implementation WILDeck

- (instancetype)initWithImage:(NSString *)imageUrl{
    self = [super init];
    if (self){
        _imageUrl = imageUrl;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary {
    
    NSDictionary<NSString *, NSString *> *cardsDict = dictionary[@"cards"][0];
    NSString *imageUrl = cardsDict[@"image"];
    
    return [self initWithImage: imageUrl];
}

@end
