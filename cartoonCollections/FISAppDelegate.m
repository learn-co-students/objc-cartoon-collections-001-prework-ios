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
        [shouts addObject:temp];
    }
    
    return shouts;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers
{
    NSMutableString *summon = [NSMutableString stringWithString:@"Let out powers combine:\n"];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        [summon stringByAppendingFormat:@"%@\n", powers[i]];
    }
    
    [summon stringByAppendingString:@"Go Planet!"];
    NSLog(@"*****************************%@", summon);
    return summon;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames
{
    return nil;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags
{
    return nil;
}

@end
