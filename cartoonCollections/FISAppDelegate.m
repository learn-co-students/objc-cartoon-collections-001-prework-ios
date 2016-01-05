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
- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs; {
    NSString *rollCall = @"";
    NSMutableString *mRollCall = [rollCall mutableCopy];
        for (NSUInteger i = 0; i < [dwarfs count]; i++) {
            if (i == 0) {
                [mRollCall appendFormat:@"%lu. %@", i+1, dwarfs[i]];
            }
            else {
            [mRollCall appendFormat:@" | %lu. %@", i+1, dwarfs[i]];
            }
    }
    return mRollCall;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers; {
    NSMutableArray *planeteerShouts = [powers mutableCopy];
    for (NSUInteger i = 0; i < [powers count]; i ++) {
        NSString *powersUpper = [powers[i] uppercaseString];
        NSString *planeteerShout = [powersUpper stringByAppendingFormat:(@"!")];
        [planeteerShouts replaceObjectAtIndex:(i) withObject:planeteerShout];
    }
    return planeteerShouts;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers; {
    NSMutableString *summon = [@"Let our powers combine:" mutableCopy];
    NSArray *planeteerShouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    for (NSUInteger i = 0; i < [planeteerShouts count]; i++) {
        [summon appendFormat:@"\n%@", planeteerShouts[i]];
        }
    [summon appendFormat:@"\nGo Planet!"];
    return summon;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames; {
    
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        if ([cheesesInStock containsObject:premiumCheeseNames[i]]) {
            return premiumCheeseNames[i];
        }
    }
    return @"No premium cheeses in stock.";
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags; {
    NSMutableArray *mBags = [moneyBags mutableCopy];
    for (NSUInteger i = 0; i < [mBags count]; i++) {
        NSString *bag = mBags[i];
        NSUInteger value = [bag length];
        NSString *paperValue = [NSString stringWithFormat:@"$%lu", value];
        [mBags replaceObjectAtIndex:(i) withObject:paperValue];
    }
    return mBags;
}

@end
