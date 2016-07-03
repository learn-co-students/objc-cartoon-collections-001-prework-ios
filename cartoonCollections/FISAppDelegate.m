//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray: (NSArray *)dwarfs {
    
    NSMutableString *dwarfCount = [[NSMutableString alloc]init];
    NSUInteger *lastCount = [dwarfs count] - 1;
    
        for (NSUInteger i = 0; i < [dwarfs count]; i++) {
            
            [dwarfCount appendFormat:@"%lu. %@", i+1, dwarfs[i]];
            
            
            
            if (i < lastCount) {
                
                [dwarfCount appendFormat:@" | "];
            }
      }
    
    return dwarfCount;
    
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray: (NSArray *)powers{
    
    NSMutableArray *allPowers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        
        NSString *power = powers[i];
        NSString *upperCase = [power uppercaseString];
        NSString *stringFormatted = [upperCase stringByAppendingString:@"!"];
        [allPowers addObject:stringFormatted];

        
    }
    return allPowers;
}

- (NSString *)summonCaptainPlanetWithPowers: (NSArray *)powers {
    
    NSMutableString *combined = [[NSMutableString alloc]init];
    [combined appendString: @"Let our powers combine:"];
    NSArray *combinedPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSUInteger i = 0; i < [combinedPowers count]; i++) {
        
        NSString *power = combinedPowers[i];
        [combined appendFormat:@"\n%@",power];
    }
    
    [combined appendFormat:@"\nGo Planet!"];
    return combined;
}

- (NSString *)firstPremiumCheeseInStock: (NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {

    
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        
        NSString *premiumCheese = premiumCheeseNames[i];
        
            if ([cheesesInStock containsObject:premiumCheese]) {
        
                return premiumCheese;
        
            }
        }
    
    return @"No premium cheeses in stock.";
    
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *)moneyBags {
    
    NSMutableArray *finalDollars = [[NSMutableArray alloc]init];
    
    for (NSUInteger i= 0; i < [moneyBags count]; i++) {
        
        NSString *dollarCoin = moneyBags[i];
        NSUInteger *moneyBagLength = [dollarCoin length];
        NSString *moneyInDollars = [NSString stringWithFormat:@"$%lu", moneyBagLength];
        [finalDollars addObject:moneyInDollars];
        
        
    }
    
    return finalDollars;
}

@end
