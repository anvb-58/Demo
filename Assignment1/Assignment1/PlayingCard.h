//
//  PlayingCard.h
//  Assignment1
//
//  Created by Mac on 7/13/16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end

/* PlayingCard_h */
