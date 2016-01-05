//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSString *separator = @" | ";
    NSMutableString *string = [@"" mutableCopy];
    for (int i = 0; i < [dwarfs count]; i++) {
        [string appendFormat:@"%i. %@%@", i+1, dwarfs[i], separator];
    }
    return [string substringToIndex:[string length]-[separator length]];
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < [powers count]; i++) {
        [array addObject:[NSString stringWithFormat:@"%@!", [powers[i] uppercaseString]]];
    }
    return array;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSMutableArray *phraseComponents = [[self arrayOfPlaneteerShoutsFromArray:powers] mutableCopy];
    [phraseComponents insertObject:@"Let our powers combine:" atIndex:0];
    [phraseComponents insertObject:@"Go Planet!" atIndex:[phraseComponents count]];
    return [phraseComponents componentsJoinedByString:@"\n"];
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    return nil;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    return nil;
}

@end
