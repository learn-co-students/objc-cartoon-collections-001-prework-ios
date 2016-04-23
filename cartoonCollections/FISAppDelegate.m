//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

// Objectives:
// 1. Practice utilizing the debugging suite while exercising what you've already learned.

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 *  Define your method implementations here.
 
 */

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSMutableString *presentNames = [[NSMutableString alloc]init];
    
    for (NSUInteger i=0; i<[dwarfs count]; i++) {
        if (i<=5) {
            NSString *dwarfNames = dwarfs[i];
            [presentNames appendFormat :@"%li. %@ | ", i+1, dwarfNames];
        } else {
            NSString *dwardNames = dwarfs[i];
            [presentNames appendFormat: @"%li. %@", i+1, dwardNames];
        }
    }
    return presentNames;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *powerSummon = [[NSMutableArray alloc]init];
    NSMutableString *capitalizedPowerSummonName = [[NSMutableString alloc] init];
    
    for (NSUInteger i=0;i<[powers count]; i++) {
        NSString *powerNames = powers[i];
        capitalizedPowerSummonName = [NSMutableString stringWithFormat: @"%@!", [powerNames uppercaseString]];
        [powerSummon addObject:capitalizedPowerSummonName];
    }
    return powerSummon;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSMutableString *summonCaptainPlanet = [[NSMutableString alloc] init];
    NSMutableString *capitalizedPowerSummonName = [[NSMutableString alloc] init];
    NSString *firstPhrase = @"Let our powers combine:\n";
    NSString *lastPhrase = @"Go Planet!";
    [summonCaptainPlanet appendFormat: @"%@", firstPhrase];
    
    for (NSUInteger i=0; i<[powers count]; i++) {
        NSString *powerNames = powers[i];
        capitalizedPowerSummonName = [NSMutableString stringWithFormat: @"%@!\n", [powerNames uppercaseString]];
        [summonCaptainPlanet appendFormat: @"%@", capitalizedPowerSummonName];
    }
    [summonCaptainPlanet appendFormat: @"%@", lastPhrase];
    
    return summonCaptainPlanet;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheeseInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    NSString *noPremiumCheeses = @"No premium cheeses in stock.";
    
    for (NSUInteger i=0; i<[premiumCheeseNames count]; i++) {
        NSString *premiumNames = premiumCheeseNames[i];
        for (NSUInteger i=0; i<[cheeseInStock count]; i++) {
            NSString *cheeseInStockNames = cheeseInStock[i];
            if ([premiumNames isEqualToString:cheeseInStockNames]) {
                return premiumNames;
            }
        }
    }
    return noPremiumCheeses;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *dollarBills = [[NSMutableArray alloc] init];
    NSMutableString *dollarFormation = [[NSMutableString alloc] init];
    
    for (NSUInteger i=0; i<[moneyBags count]; i++) {
        NSString *moneyParameters = moneyBags[i];
        dollarFormation = [NSMutableString stringWithFormat: @"$%li", [moneyParameters length]];
        [dollarBills addObject:dollarFormation];
    }
    return dollarBills;
}


@end
