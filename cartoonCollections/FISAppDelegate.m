//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray: (NSArray *)dwarfs {
    
    NSMutableString *string = [NSMutableString string];
    NSUInteger i = 0;
    
    
    while (i < [dwarfs count]) {
        i = i + 1;
        NSString *name = dwarfs[i - 1];
        
        [string appendFormat:@"%lu. %@", i, name];
        
        if (![[dwarfs lastObject] isEqual:name]) {
            [string appendString:@" | "];
        }
        
    }
    
    
    return string;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray: (NSArray *)powers {
    
    NSMutableArray *array = [NSMutableArray array];
    NSUInteger i = 0;
    
    for (__strong NSString *power in powers) {
        i = i + 1;
        power = powers[i - 1];
        power = [power uppercaseString];
        NSMutableString *string = [power mutableCopy];
        [string appendString:@"!"];
        [array addObject:string];
        
    }
    
    return array;
}

- (NSString *)summonCaptainPlanetWithPowers: (NSArray *)powers {
    
    NSMutableString *shout = [NSMutableString string];
    NSUInteger i = 0;
    
    for (__strong NSString *power in powers) {
        i = i + 1;
        power = powers[i - 1];
        NSString *upperCasePower = [power uppercaseString];
        [shout appendFormat:@"\n%@!", upperCasePower];
        
    }
    
    [shout insertString:@"Let our powers combine:" atIndex:0];
    [shout appendString:@"\nGo Planet!"];
    
    
    return shout;
}

- (NSString *)firstPremiumCheeseInStock: (NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeses {
    
    
    NSMutableString *firstCheese = [NSMutableString string];
    
    for (int i = 0; i < [cheesesInStock count]; i++) {
        
        for (int j = 0; j < [premiumCheeses count]; j++) {
            
            if ([cheesesInStock[i] isEqualToString:premiumCheeses[j]]) {
                [firstCheese appendString: cheesesInStock[i]];
                
            }
        }
    }
    
    if (![firstCheese length]) {
        return @"No premium cheeses in stock.";
    }
    
    
    
    return firstCheese;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *)moneyBags {
    NSMutableArray *converted = [NSMutableArray array];
    NSUInteger i = 0;
    
    
    for (__strong NSString *money in moneyBags) {
        i = i + 1;
        money = moneyBags[i - 1];
        NSUInteger moneyLength = [money length];
        NSString *length = [NSString stringWithFormat:@"%lu", (unsigned long)moneyLength];
        NSMutableString *string = [length mutableCopy];
        [string insertString:@"$" atIndex:0];
        [converted addObject:string];
        
    }
    
    
    return converted;
}


@end
