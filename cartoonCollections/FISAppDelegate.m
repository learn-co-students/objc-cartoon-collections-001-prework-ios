//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {

    NSString *nameList = @"";
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        
        nameList = [nameList stringByAppendingFormat:@"%lu. %@ | ", i + 1, dwarfs[i]];
    }
    
    NSUInteger trailingPipeIndex = [nameList length] - 3;
    
    nameList = [nameList substringToIndex:trailingPipeIndex];
    
    return nameList;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *uppercasePowers = [powers mutableCopy];
    
    for (NSUInteger i = 0; i < [uppercasePowers count]; i++) {
        
        [uppercasePowers replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"%@!", [uppercasePowers[i] uppercaseString]]];
    }
    
    return uppercasePowers;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSArray *uppercasePowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSString *uppercasePowersOnNewlines = @"";
    
    for (NSUInteger i = 0; i < [uppercasePowers count]; i++) {
        
        uppercasePowersOnNewlines = [uppercasePowersOnNewlines stringByAppendingFormat:@"\n%@", uppercasePowers[i]];
    }
    
    return [NSString stringWithFormat:@"Let our powers combine:%@\nGo Planet!", uppercasePowersOnNewlines];
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeses {
    
    for (NSUInteger i = 0; i < [premiumCheeses count]; i++) {
        
        NSString *currentCheese = premiumCheeses[i];
        
        for (NSUInteger j = 0; j < [cheesesInStock count]; j++) {
            
            if ([currentCheese isEqualToString:cheesesInStock[j]]) {
                
                return currentCheese;
            }
        }
    }
    
    return @"No premium cheeses in stock.";
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *paperBills = [moneyBags mutableCopy];
    
    for (NSUInteger i = 0; i < [paperBills count]; i ++) {
        
        [paperBills replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"$%lu", [paperBills[i] length]]];
    }
    
    return paperBills;
}

@end
