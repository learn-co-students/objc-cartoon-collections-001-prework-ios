//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString*) stringByRollCallingDwarfsInArray: (NSArray*) dwarfs {
    NSString* result = @"";
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        result = [result stringByAppendingString: [NSString stringWithFormat: @"%lu. %@ | ", i + 1, dwarfs[i]]];
    }
    return [result substringToIndex: [result length] - 3];
    // Should check if [result length] > 3 to make it robust
}

- (NSArray*) arrayOfPlaneteerShoutsFromArray: (NSArray*) powers {
    NSMutableArray* shouts = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString* power = [(NSString*) powers[i] uppercaseString];
        [shouts addObject: [power stringByAppendingString:@"!"]];
    }
    return shouts;
    // It doesn't modify the array passed as argument
}

- (NSString*) summonCaptainPlanetWithPowers: (NSArray*) powers {
    NSString* result = @"Let our powers combine:\n";
    NSArray* shoutedPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    for (NSUInteger i = 0; i < [shoutedPowers count]; i++) {
        result = [result stringByAppendingString: [NSString stringWithFormat: @"%@\n", (NSString*) shoutedPowers[i]]];
    }
    return [result stringByAppendingString: @"Go Planet!"];
}

- (NSString*) firstPremiumCheeseInStock: (NSArray*) cheesesInStock premiumCheeseNames: (NSArray*) premiumCheeseNames {
    NSString* result = @"No premium cheeses in stock.";
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        NSString* premiumCheese = (NSString*) premiumCheeseNames[i];
        for (NSString* cheeseInStock in cheesesInStock) {
            if ([premiumCheese isEqualToString: cheeseInStock]) {
                result = premiumCheese;
            }
        }
    }
    return result;
}

- (NSArray*) arrayByConvertingMoneyBagsIntoPaperBills: (NSArray*) moneyBags {
    NSMutableArray* paperBills = [NSMutableArray arrayWithCapacity:[moneyBags count]];
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        paperBills[i] = [NSString stringWithFormat:@"$%lu", [(NSString*) moneyBags[i] length]];
    }
    return paperBills;
}


@end
