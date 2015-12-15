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

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs
{
    NSMutableString *rollCall = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        if (i > 0) {
            [rollCall stringByAppendingString:@" |"];
        }
        [rollCall stringByAppendingFormat:@" %li. %@", i + 1, dwarfs[i]];
    }
    
    return rollCall;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers
{
    NSMutableArray *shouts = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *temp = [NSString stringWithFormat:@"%@!", [powers[i] uppercaseString]];
        [shouts addObject: temp];
    }
    
    return shouts;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers
{
    NSArray *shouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    NSString *summon = @"Let our powers combine:\n";
    
    for (NSUInteger i = 0; i < [shouts count]; i++) {
        summon = [summon stringByAppendingFormat:@"%@\n", shouts[i]];
    }
    
    summon = [summon stringByAppendingString:@"Go Planet!"];
    return summon;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames
{
    for (NSUInteger i = 0; i < [cheesesInStock count]; i++) {
        for (NSUInteger j = 0; j < [premiumCheeseNames count]; i++) {
            if ([cheesesInStock[i] isEqualToString:premiumCheeseNames[i]]) {
                return cheesesInStock[i];
            }
        }
    }
    return @"No premium cheeses in stock";
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags
{
    return nil;
}

@end
