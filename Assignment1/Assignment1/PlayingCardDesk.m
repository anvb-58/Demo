//
//  PlayingCardDesk.m
//  Assignment1
//
//  Created by Mac on 7/13/16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import "PlayingCardDesk.h"
#import "PlayingCard.h"

@implementation PlayingCardDesk

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end