//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSMutableString *dwarfRollCall = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        if (dwarfs[i] == [dwarfs lastObject]) {
            [dwarfRollCall appendString: [NSString stringWithFormat: @"%lu. %@", i + 1, dwarfs[i]]];
        } else {
            [dwarfRollCall appendString: [NSString stringWithFormat: @"%lu. %@ | ", i + 1, dwarfs[i]]];
        }
        
    }
    
    return dwarfRollCall;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *planeteerShouts = [[NSMutableArray alloc] initWithArray:powers];
    
    for (NSUInteger i = 0; i < [planeteerShouts count]; i++) {
        NSString *currentShout = [[planeteerShouts objectAtIndex:i] uppercaseString];
        NSMutableString *currentCapitalizedShout = [[NSMutableString alloc] initWithString:currentShout];
        [currentCapitalizedShout appendString: @"!"];
        [planeteerShouts replaceObjectAtIndex:i withObject:currentCapitalizedShout];
    }
    
    return planeteerShouts;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSMutableString *summoningCaptainPlanet = [[NSMutableString alloc] initWithString:@"Let our powers combine:"];
    NSArray *capitalizedPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSUInteger i = 0; i < [capitalizedPowers count]; i++) {
        [summoningCaptainPlanet appendString: [NSString stringWithFormat: @"\n%@", capitalizedPowers[i]]];
    }
    
    [summoningCaptainPlanet appendString: @"\nGo Planet!"];
    
    return summoningCaptainPlanet;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        for (NSUInteger j = 0; j < [cheesesInStock count]; j++) {
            if ([premiumCheeseNames[i] isEqualToString: cheesesInStock[j]]) {
                return premiumCheeseNames[i];
            }
        }
    }
    
    return @"No premium cheeses in stock.";
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        [paperBills addObject: [NSString stringWithFormat: @"$%lu", [moneyBags [i] length]]];
    }
    
    return paperBills;
}

@end
