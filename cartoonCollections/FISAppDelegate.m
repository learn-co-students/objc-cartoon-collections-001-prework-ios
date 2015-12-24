//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


-(NSString*)stringByRollCallingDwarfsInArray:(NSArray*)dwarfs {
    NSMutableString *dwarfRollCall = [[NSMutableString alloc] init];
    NSUInteger index = 1;
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        if (i == 0) {
            [dwarfRollCall appendFormat:@"%lu. %@",index,dwarfs[i]];
        } else {
            [dwarfRollCall appendFormat:@" | %lu. %@",index,dwarfs[i]];
        }
        index++;
    }
    
    return dwarfRollCall;
}
-(NSArray*)arrayOfPlaneteerShoutsFromArray:(NSArray*)powers {
    NSMutableArray *powersCombine = [[NSMutableArray alloc] init];
    NSString *powerString;
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        powerString = [NSString stringWithFormat:@"%@!",[powers[i] uppercaseString]];
        [powersCombine addObject:powerString];
    }
    
    return powersCombine;
}
-(NSString*)summonCaptainPlanetWithPowers:(NSArray*)powers {
    NSMutableString *powersCombineString = [[NSMutableString alloc] init];
    [powersCombineString appendString:@"Let our powers combine:\n"];
    
    NSArray *powersFormattedArray = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSUInteger i = 0; i < [powersFormattedArray count]; i++) {
        [powersCombineString appendFormat:@"%@\n",powersFormattedArray[i]];
    }
    
    [powersCombineString appendString:@"Go Planet!"];
    
    return powersCombineString;
}
-(NSString*)firstPremiumCheeseInStock:(NSArray*)cheesesInStock premiumCheeseNames:(NSArray*)premiumCheeseNames {
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        for (NSUInteger j = 0; j < [cheesesInStock count]; j++) {
            if ([premiumCheeseNames[i] isEqualToString:cheesesInStock[j]]) {
                return premiumCheeseNames[i];
            }
        }
    }
    return @"No premium cheeses in stock.";
}
-(NSArray*)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray*)moneyBags {
    NSMutableArray *outputArray = [[NSMutableArray alloc] init];
    //NSString currentString;
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSString *dollarString = [NSString stringWithFormat:@"$%lu", [moneyBags[i] length]];
        [outputArray addObject:dollarString];
    }
    return outputArray;
}









@end
