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

    NSMutableString *allDwarfs = [[NSMutableString alloc] init];

    for (NSInteger i = 0; i < [dwarfs count]; i++) {
        [allDwarfs appendFormat:@"%lu. %@", i+1, dwarfs[i]];
        
        if (i != [dwarfs count]-1 ) {
            [allDwarfs appendFormat:@" | "];
        }
    }

    return allDwarfs;
}


-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    NSMutableArray *allPowers = [[NSMutableArray alloc] init];

    for (NSInteger i = 0; i < [powers count]; i++){
        NSString *formatString = [NSString stringWithFormat:@"%@!",[powers[i] uppercaseString] ];

        [allPowers addObject:formatString];
    }
    
    return allPowers;
};


- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{

    NSMutableString *summonPowers = [[NSMutableString alloc] init];

    NSString *beginPhrase = @"Let our powers combine:\n";
    NSArray *allPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSString *endPhrase = @"Go Planet!";

    [summonPowers appendString:beginPhrase];

    for (NSInteger i = 0 ; i < [allPowers count]; i++) {

        [summonPowers appendString:allPowers[i]];
        [summonPowers appendString:@"\n"];
    };

    [summonPowers appendString:endPhrase];

    return summonPowers;
};

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {

    for (NSInteger i=0; i < [premiumCheeseNames count]; i++){
        if ([cheesesInStock containsObject:premiumCheeseNames[i]]){
            return premiumCheeseNames[i];
        };

    };

    return @"No premium cheeses in stock.";
    };

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSMutableArray *allMoney = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < [moneyBags count]; i++){
        NSString *amount = [NSString stringWithFormat:@"$%lu",(unsigned long)[moneyBags[i] length]];
        [allMoney addObject:amount];
    };
    
    return allMoney;
};

@end
