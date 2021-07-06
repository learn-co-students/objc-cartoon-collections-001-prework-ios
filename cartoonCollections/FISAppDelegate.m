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

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarves {
    NSMutableArray *orderedDwarves = [dwarves mutableCopy];
    for (NSUInteger i = 0; i < [orderedDwarves count]; i++) {
        orderedDwarves[i] = [NSString stringWithFormat:@"%lu. %@", i+1, orderedDwarves[i]];
    }
    
    NSString *rollCall = [orderedDwarves componentsJoinedByString:@" | "];
    return rollCall;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *shouts = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSMutableString *power = [[powers[i] uppercaseString] mutableCopy];
        [power appendString:@"!"];
        [shouts addObject:power];
    }
    return shouts;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSArray *shouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSMutableString *captainPlanetsSpeech = [@"Let our powers combine:\n" mutableCopy];
    
    [captainPlanetsSpeech appendString:[shouts componentsJoinedByString:@"\n"]];
    [captainPlanetsSpeech appendString:@"\nGo Planet!"];
    
    return captainPlanetsSpeech;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    NSString *firstPickOfCheese = [cheesesInStock firstObjectCommonWithArray:premiumCheeseNames];
    
    if (firstPickOfCheese == nil) {
        firstPickOfCheese = @"No premium cheeses in stock.";
    }
    return firstPickOfCheese;
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSUInteger numBills = 0;
        
        for (NSUInteger index = 0; index < [moneyBags[i] length]; index++) {
            if ( [moneyBags[i] characterAtIndex:index] == '$' ) {
                numBills++;
            }
        }
        
        paperBills[i] = [NSString stringWithFormat:@"$%lu", numBills];
    }
    
    return paperBills;
}






@end
