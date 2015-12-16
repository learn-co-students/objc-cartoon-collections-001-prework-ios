//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

//    NSArray *planeteers = @[@"earth", @"fire", @"wind", @"water", @"heart"];
//    [self arrayOfPlaneteerShoutsFromArray:planeteers];
    
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSString *dwarfNames = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < dwarfs.count; i++) {
        if (i > 0) {
        dwarfNames = [dwarfNames stringByAppendingString:@" | "];
    }
    dwarfNames = [dwarfNames stringByAppendingFormat:@"%li. %@", i + 1, dwarfs[i]];
    }
    return dwarfNames;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *planeteerPowers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < powers.count; i++) {
        NSString *items = [NSString stringWithFormat:@"%@!", [powers[i] uppercaseString]];
        [planeteerPowers addObject:items];
    }
    NSLog(@"%@", planeteerPowers);
    return planeteerPowers;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
   
    NSString *callCaptainPlanet = @"Let our powers combine:\n";
    NSArray *planeteerShouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSString *goPlanet = @"Go Planet!";
    
    for (NSUInteger i = 0; i < planeteerShouts.count; i++) {
        callCaptainPlanet = [callCaptainPlanet stringByAppendingFormat:@"%@\n", planeteerShouts[i]];
    }
    
    callCaptainPlanet = [callCaptainPlanet stringByAppendingString:goPlanet];
    return callCaptainPlanet;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock
                     premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    NSString *sorry = @"No premium cheeses in stock.";
    
    for (NSUInteger i = 0; i < cheesesInStock.count; i++) {
        for (NSUInteger j = 0; j < premiumCheeseNames.count; j++) {
            if ([cheesesInStock[i] isEqualToString:premiumCheeseNames[j]]) {
                return cheesesInStock[i];
            }
        }
    }
    return sorry;
}


- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *scroogesCoins = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < moneyBags.count; i++) {
        NSUInteger currentCount = [moneyBags[i] length];
        NSString *countToString = [NSString stringWithFormat:@"$%li", currentCount];
        [scroogesCoins addObject:countToString];
        
    }
    return scroogesCoins;
}

@end
