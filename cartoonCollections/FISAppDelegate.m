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

- (NSString *) stringByRollCallingDwarfsInArray: (NSArray *)dwarfs {
    NSString *retStr = [[NSMutableString alloc] init];
    NSUInteger count = 1;
    for (NSString *dwarf in dwarfs) {
        if (count == [dwarfs count]) {
            retStr = [retStr stringByAppendingFormat:@"%lu. %@", count, dwarf];
        }
        else{
            retStr = [retStr stringByAppendingFormat:@"%lu. %@ | ", count, dwarf];
        }
        count++;
    }
    return retStr;
}

- (NSArray *) arrayOfPlaneteerShoutsFromArray: (NSArray *)powers {
    NSMutableArray *powersAsShouts = [[NSMutableArray alloc]init];
    for (NSString *power in powers) {
        [powersAsShouts addObject: [NSString stringWithFormat:@"%@!",[power uppercaseString]]];
    }
    return powersAsShouts;
}

- (NSString *) summonCaptainPlanetWithPowers: (NSArray *)powers {
    return [NSString stringWithFormat:@"Let our powers combine:\n%@\nGo Planet!", [[self arrayOfPlaneteerShoutsFromArray:powers] componentsJoinedByString:@"\n"]];
}

- (NSString *) firstPremiumCheeseInStock: (NSArray *)cheesesInStock premiumCheeseNames: (NSArray *)names {
    for (NSString *cheese in cheesesInStock) {
        if ([names containsObject:cheese]) {
            return cheese;
        }
    }
    return @"No premium cheeses in stock.";
}

    //assuming that input strings in arrays contain only dollar signs
- (NSArray *) arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *)moneyBags {
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    for (NSString *moneyBag in moneyBags) {
        [paperBills addObject: [NSString stringWithFormat:@"$%lu", [moneyBag length]]];
    }
    return paperBills;
}

@end
