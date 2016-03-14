//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSMutableString *rollCall = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        
        NSUInteger index = i + 1;
        
        [rollCall appendFormat:@"%lu. %@", index, dwarfs[i]];
        
        if (i < [dwarfs count] - 1) {
            
            [rollCall appendString:@" | "];
        }
    }
    
    return rollCall;
}


-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *combinedPowers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {

        NSMutableString *shouts = [[NSMutableString alloc] init];
    
        shouts = [NSMutableString stringWithFormat:@"%@!", [powers[i] uppercaseString]];
        
        [combinedPowers addObject:shouts];
    }
    
    return combinedPowers;
}


-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSMutableString *summonCall = [[NSMutableString alloc] init];
    
    [summonCall appendString:@"Let our powers combine:\n"];
    
    NSArray *powerShout = [self arrayOfPlaneteerShoutsFromArray:powers];

    for (NSUInteger i = 0; i < [powerShout count]; i++) {
        [summonCall appendFormat:@"%@\n", powerShout[i]];
    }
    
        [summonCall appendString:@"Go Planet!"];
    
    return summonCall;
}


-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    NSString *outOfStock = @"No premium cheeses in stock.";

    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        
        NSString *premiumCheesesInStock = premiumCheeseNames[i];
        
    for (NSUInteger i = 0; i < [cheesesInStock count]; i++) {
        
        NSString *cheeseInStock = cheesesInStock[i];
        
        if ([premiumCheesesInStock isEqualToString:cheeseInStock]) {
            return premiumCheesesInStock;
        }
      }
    }
             
    return outOfStock;
}


-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSString *dollarCoins = moneyBags[i];
        NSUInteger coinCount = [dollarCoins length];
        NSString *bills = [NSString stringWithFormat:@"$%lu", coinCount];
        [paperBills addObject:bills];
        
    }

                                
    return paperBills;
}


@end
