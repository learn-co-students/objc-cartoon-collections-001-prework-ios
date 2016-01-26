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


-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    NSMutableString* rollCall = [[NSMutableString alloc] init];
    NSUInteger lastInLine = [dwarfs count] -1;
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        [rollCall appendFormat:@"%lu. %@", i + 1, dwarfs[i]];
        if (i < lastInLine) {
            [rollCall appendString:@" | "];
        }
    }
    return rollCall;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
        NSMutableArray* shouts = [[NSMutableArray alloc]init];
    
        for (NSUInteger i = 0; i <[powers count]; i++) {
            NSString* power = powers[i];
            NSString* uppercasePower = [power uppercaseString];
            NSString* shoutedPower = [uppercasePower stringByAppendingString:@"!"];
            [shouts addObject:shoutedPower];
        }
    return shouts;
}
    
-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSMutableString* summon = [[NSMutableString alloc]init];
    [summon appendString:@"Let our powers combine:"];
    NSArray* shoutedPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSUInteger i = 0; i > [shoutedPowers count]; i++) {
        NSString* shout = shoutedPowers[i];
        [summon appendFormat:@"\n%@", shout];
    }
    [summon appendString:@"\nGo Planet!"];
    return summon;
}
    
-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *) premiumCheeseNames{
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        NSString *premiumCheese = premiumCheeseNames[i];
        if ([cheesesInStock containsObject:premiumCheese]) {
            return premiumCheese;
        }
    }
    return @"No premium cheeses in stock.";
}

    
-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSMutableArray* paperBills = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSString *moneyBag = moneyBags[i];
        NSUInteger moneyBagLength = [moneyBag length];
        NSString *paperBill = [NSString stringWithFormat:@"$%lu", moneyBagLength];
        [paperBills addObject:paperBill];
    }
    return paperBills;
}

@end

