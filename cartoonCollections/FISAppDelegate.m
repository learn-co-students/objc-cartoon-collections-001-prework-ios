//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    NSMutableArray *dwarfsNamesWithOrder = [[NSMutableArray alloc] init];
    NSString *dwarfRollCall = @"";
    
    for (NSInteger i= 0; i < [dwarfs count]; i++) {
        NSString *dwarfName = dwarfs[i];
        NSString *nameToBeAddedWithOrder = [NSString stringWithFormat:@"%ld. %@", i+1, dwarfName];
        [dwarfsNamesWithOrder addObject:nameToBeAddedWithOrder];
        dwarfRollCall = [dwarfsNamesWithOrder componentsJoinedByString:@" | "];
    }
    
    return dwarfRollCall;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *planeteerPowersShout = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < [powers count]; i++) {
        NSString *powersUppercased = [powers[i] uppercaseString];
        [planeteerPowersShout addObject:[NSString stringWithFormat:@"%@!", powersUppercased]];

    }
    
    return planeteerPowersShout;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSArray *planteeerPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSString *addLineBreaks = [planteeerPowers componentsJoinedByString:@"\n"];
    NSString *summonCaptainPlanet = [NSString stringWithFormat:@"Let our powers combine:\n%@\nGo Planet!", addLineBreaks];
    
    return summonCaptainPlanet;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeses {
    for (NSInteger i = 0; i < [premiumCheeses count]; i++) {
        for (NSInteger j = 0; j < [cheesesInStock count]; j++) {
            if ([premiumCheeses[i] isEqualToString:cheesesInStock[j]]) {
                return premiumCheeses[i];
            }
        }
    }
    return @"No premium cheeses in stock.";
    
    /* First attempted and old code. Works if you are only looking for one thing in common.
     
     NSString *premiumCheeseAvailable = [cheesesInStock firstObjectCommonWithArray:premiumCheeses];
     
     if (premiumCheeseAvailable == nil) {
     premiumCheeseAvailable = @"No premium cheeses in stock.";
     }
     return premiumCheeseAvailable;*/
}


-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSMutableArray *conversionOutput = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < [moneyBags count]; i++) {
        NSString *coinToDollarConverter = [NSString stringWithFormat:@"$%lu", [moneyBags[i] length]];
        [conversionOutput addObject:coinToDollarConverter];
   
        }
    
    return conversionOutput;

}

@end
