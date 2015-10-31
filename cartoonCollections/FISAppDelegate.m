//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 *  Define your method implementations here.
 
 */

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    NSMutableString *rollCall = [[NSMutableString alloc] init];
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        if (i == [dwarfs count] - 1) {
            [rollCall appendFormat:@"%lu. %@", i + 1, dwarfs[i]];
        } else {
            [rollCall appendFormat:@"%lu. %@ | ", i + 1, dwarfs[i]];
        }
    }
    return rollCall;
}
- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *powerShouts = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *uppercasePower = [powers[i] uppercaseString];
        NSString *powerShout = [uppercasePower stringByAppendingString:@"!"];
        [powerShouts addObject:powerShout];
    }
    return powerShouts;
}
- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSMutableString *summonCaptainPlanet = [[NSMutableString alloc] init];
    [summonCaptainPlanet appendString:@"Let our powers combine:"];
    NSArray *powerShouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    for (NSUInteger i = 0; i < [powerShouts count]; i++) {
        [summonCaptainPlanet appendFormat:@"\n%@", powerShouts[i]];
    }
    [summonCaptainPlanet appendString:@"\nGo Planet!"];
    return summonCaptainPlanet;
}
- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    for (NSUInteger i = 0; i < [cheesesInStock count]; i++) {
        for (NSUInteger j = 0; j < [premiumCheeseNames count]; j++) {
            if ([cheesesInStock[i] isEqualToString:premiumCheeseNames[j]]) {
                return cheesesInStock[i];
            }
        }
    }
    return @"No premium cheeses in stock.";
}
- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSUInteger valueOfMoneyBag = [moneyBags[i] length];
        NSString *paperBill = [[NSString alloc] initWithFormat:@"$%lu", valueOfMoneyBag];
        [paperBills addObject:paperBill];
    }
    return paperBills;
}

@end
