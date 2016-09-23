//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString*)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSUInteger rollCallNumber;
    NSMutableString *rollCallString = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        rollCallNumber = i + 1;
        if (rollCallNumber > 1) {
            [rollCallString appendString:@" | "];
        }
        [rollCallString appendFormat:@"%lu. %@", (unsigned long)rollCallNumber, dwarfs[i]];
    }
    
    return rollCallString;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *shouts = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        [shouts addObject:[[NSString stringWithFormat:@"%@!", powers[i]] uppercaseString]];
    }
    
    return shouts;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSMutableString *captainPlanetSummon = [[NSMutableString alloc] initWithString:@"Let our powers combine:"];
    NSArray *shouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSUInteger i = 0; i < [shouts count]; i++) {
        [captainPlanetSummon appendFormat:@"\n%@", shouts[i]];
    }
    
    [captainPlanetSummon appendString:@"\nGo Planet!"];
    
    return captainPlanetSummon;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    NSString *premiumCheese = @"No premium cheeses in stock.";
    
    for (NSUInteger i = 0; i < [cheesesInStock count]; i++) {
        if ([premiumCheeseNames containsObject:cheesesInStock[i]]) {
            premiumCheese = cheesesInStock[i];
            break;
        }
    }
    
    return premiumCheese;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSUInteger coinCount;
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        coinCount = [[moneyBags[i] componentsSeparatedByString:@"$"] count] - 1;
        [paperBills addObject:[NSString stringWithFormat:@"$%lu", (unsigned long)coinCount]];
    }
    
    return paperBills;
}

@end
