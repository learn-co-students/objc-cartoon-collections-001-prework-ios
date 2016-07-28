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
    
    NSMutableString *dwarfsAndNumbers = [[NSMutableString alloc] init];
    
    NSUInteger lastDwarf = [dwarfs count] - 1;
    
    
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        
        NSUInteger numbersForDwarfs = i + 1;
        
        [dwarfsAndNumbers appendFormat:@"%lu. %@", numbersForDwarfs, dwarfs[i]];
        
        if (i < lastDwarf) {
            [dwarfsAndNumbers appendString:@" | "];
        }
    }
    
    
    return dwarfsAndNumbers;
}





- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    
    NSMutableArray *planeteerShouts = [[NSMutableArray alloc] init];
    
    
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        
        NSString *eachPower = powers[i];
        
        NSString *uppercasePower = [eachPower uppercaseString];
        
        NSString *powerExclamation = [uppercasePower stringByAppendingString:@"!"];
        
        [planeteerShouts addObject:powerExclamation];
    }
    
    
    
    return planeteerShouts;
}





- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSMutableString *addedPowerPhrase = [[NSMutableString alloc] init];
    
    [addedPowerPhrase appendString:@"Let our powers combine:"];
    
    
    
    NSArray *copyOfUppercasePower = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    
    
    
    for (NSUInteger i = 0; i < [copyOfUppercasePower count]; i++) {
        
        NSString *shout = copyOfUppercasePower [i];
        
        [addedPowerPhrase appendFormat:@"\n%@", shout];
    }
    
    [addedPowerPhrase appendString:@"\nGo Planet!"];
    
    
    return addedPowerPhrase;
}






- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock
                     premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        
        NSString *premiumCheese = premiumCheeseNames[i];
        
        if ([cheesesInStock containsObject:premiumCheese]) {
            
            return premiumCheese;
        }
    }
    
    return @"No premium cheeses in stock.";
}






- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *totalPaperBills = [[NSMutableArray alloc] init];
    
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        
        NSString *eachMoneyBag = moneyBags[i];
        
        NSUInteger moneyBagLength = [eachMoneyBag length];
        
        NSString *formatMoneyBag = [NSString stringWithFormat:@"$%lu", moneyBagLength];
        
        [totalPaperBills addObject:formatMoneyBag];
    }
    
    return totalPaperBills;
}

@end
