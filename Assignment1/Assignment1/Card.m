//
//  Card.m
//  Assignment1
//
//  Created by Mac on 7/13/16.
//  Copyright © 2016 Mac. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

@synthesize contents = _contents;

- (NSString *)contents
{
    return _contents;
}

- (void)setContents:(NSString *)contents
{
    _contents = contents;
}

@synthesize chosen = _chosen;

- (BOOL)isChosen
{
    return _chosen;
}

- (void)setChosen:(BOOL)chosen
{
    _chosen = chosen;
}

@synthesize matched = _matched;

- (BOOL)isMatched
{
    return _matched;
}

- (void)setMatched:(BOOL)matched
{
    _matched = matched;
}

- (int)match1:(Card *)card
{
    int score = 0;
    
    if ([card.contents isEqualToString:self.contents])
    {
        score = 1;
    }
    
    return score;
}

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end