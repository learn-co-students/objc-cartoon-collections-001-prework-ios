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
    
    NSString *cheese;
    for (int i = 0; i < [cheesesInStock count]; i++) {
        cheese = cheesesInStock[i];
        if ([premiumCheeseNames containsObject:cheese]) {
            return cheese;
        }
    }
    return @"No premium cheeses in stock.";
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *paperBills = [NSMutableArray arrayWithCapacity:[moneyBags count]];
    NSString *filteredMoneyBag;
    for (int i = 0; i < [moneyBags count]; i++) {
        filteredMoneyBag = [[moneyBags[i] componentsSeparatedByCharactersInSet:[[NSCharacterSet characterSetWithCharactersInString:@"$"] invertedSet]] componentsJoinedByString:@""];
        [paperBills addObject:[NSString stringWithFormat:@"$%lu", [filteredMoneyBag length]]];
    }
    return paperBills;
}

@end
