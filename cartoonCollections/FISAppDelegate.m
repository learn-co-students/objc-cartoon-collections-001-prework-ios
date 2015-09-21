//
//  FISAppDelegate.m
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

/**
 
 *  Define your method implementations here.
 
 */

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSUInteger n = [dwarfs count];
    NSMutableString *rollCall = [ [NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < n - 1; i++) {
        NSUInteger listNumber = i + 1;
        [rollCall appendFormat:@"%lu. %@ | ", listNumber, dwarfs[i] ];
    }
    
    [rollCall appendFormat:@"%lu. %@", n, dwarfs[n - 1] ];
    
    return rollCall;
}


-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *powerShouts = [ [NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *powerUppercase = [powers[i] uppercaseString];
        NSString *powerShout = [NSString stringWithFormat:@"%@!", powerUppercase];
        [powerShouts addObject:powerShout];
    }
    
    return powerShouts;
}


-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSMutableString *theSummon = [@"Let our powers combine:\n" mutableCopy];
    
    NSArray *powerShouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    for (NSUInteger i = 0; i < [powerShouts count]; i++) {
        [theSummon appendFormat:@"%@\n", powerShouts[i] ];
    }
    
    [theSummon appendString:@"Go Planet!"];
    
    return theSummon;
}


-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        NSString *premiumCheeseName = premiumCheeseNames[i];
        if ([cheesesInStock containsObject:premiumCheeseName]) {
            return premiumCheeseName;
        }
    }
    return @"No premium cheeses in stock.";
}


-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSMutableArray *paperBills = [ [NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSString *bag = moneyBags[i];
        NSUInteger count = [bag length];
        NSString *paperBill = [NSString stringWithFormat:@"$%lu", count];
        [paperBills addObject:paperBill];
    }
    return paperBills;
}

@end
