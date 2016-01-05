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
    NSString *dwarfsList = @"";
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        if (i == [dwarfs count] - 1) {
            dwarfsList = [dwarfsList stringByAppendingFormat:@"%lu. %@", i + 1, dwarfs[i]];
        }
        else
            dwarfsList = [dwarfsList stringByAppendingFormat:@"%lu. %@ | ", i + 1, dwarfs[i]];
    }
    
    return dwarfsList;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *superPowers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        superPowers[i] = [[powers[i] uppercaseString] stringByAppendingString:@"!"];
    }
    
    return superPowers;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSString *callToVictory = @"Let our powers combine:\n";
    NSString *endingShout = @"Go Planet!";
    NSArray *superPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSUInteger i = 0; i < [superPowers count]; i++) {
        callToVictory = [callToVictory stringByAppendingFormat:@"%@\n", superPowers[i]];
    }
    callToVictory = [callToVictory stringByAppendingFormat:@"%@", endingShout];
    
    return callToVictory;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    BOOL firstCheese = NO;
    NSString *inStockCheese = @"No premium cheeses in stock.";
    
    for (NSUInteger i = 0; i < [premiumCheeseNames count] && !firstCheese; i++) {
        for (NSUInteger j = 0; j < [cheesesInStock count]; j++) {
            if ([premiumCheeseNames[i] isEqualToString:cheesesInStock[j]]) {
                firstCheese = YES;
                inStockCheese = premiumCheeseNames[i];
            }
        }
    }
    
    return inStockCheese;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    NSString *paperValue = @"";
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        paperValue = [paperValue stringByAppendingFormat:@"$%lu", [moneyBags[i] length]];
        [paperBills addObject:paperValue];
        paperValue = @"";
    }
    
    return paperBills;
}

@end
