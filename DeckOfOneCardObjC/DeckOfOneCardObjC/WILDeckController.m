//
//  WILDeckController.m
//  DeckOfOneCardObjC
//
//  Created by William Moody on 5/21/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

#import "WILDeckController.h"

@implementation WILDeckController

+ (void) fetchCard:(void (^)(WILDeck * _Nullable))completion {
    
    //make url
    NSURL *finalUrl = [NSURL URLWithString:@"https://deckofcardsapi.com/api/deck/new/draw/?count=1"];
    
    //datatask
    [[[NSURLSession sharedSession] dataTaskWithURL:finalUrl completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"There was an error in %s:%@, %@", __PRETTY_FUNCTION__, error, [error localizedDescription]);
            completion(nil);
            return;
        }
        if (data) {
            NSDictionary *jsondictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
            WILDeck *deck = [[WILDeck alloc] initWithDictionary:jsondictionary];
            completion(deck);
        }
        completion(nil);
        return;
    }]resume];
}

+ (void)fetchImageWithUrlString:(NSString *)urlString completion:(void (^)(UIImage * _Nullable))completion {
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSLog(@"%@", [url absoluteString]);

    
    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"There was an error in %s:%@, %@", __PRETTY_FUNCTION__, error, [error localizedDescription]);
            completion(nil);
            return;
        }
        if (data) {
            UIImage *cardImage = [UIImage imageWithData:data];
            completion(cardImage);
            return;
        }
        completion(nil);
        return;
    }]resume];
}


@end
