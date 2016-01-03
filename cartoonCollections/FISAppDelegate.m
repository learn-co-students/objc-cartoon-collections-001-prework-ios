//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}



- (NSString*) stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    NSMutableString *s = [NSMutableString new];
    
    if([dwarfs count]>0){
        [s appendFormat:@"1. %@", dwarfs[0]];
    }
    
    for (NSUInteger i=1; i<[dwarfs count]; i++) {
        [s appendFormat:@" | %li. %@", i+1 ,dwarfs[i]];
    }
    
    return s;
}

- (NSString*) summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSMutableString *s = [NSMutableString new];
    [s appendString:@"Let our powers combine:\n"];
    
    for (NSUInteger i=0; i<[powers count]; i++) {
        [s appendString:[powers[i] uppercaseString]];
        [s appendString:@"!\n"];
    }
    [s appendString:@"Go Planet!"];
    
    return s;

}


- (NSString*) firstPremiumCheeseInStock:(NSArray *)cheesesInStock
                         premiumCheeseNames:(NSArray *)premiumCheeseNames{
    
    for (NSUInteger i=0; i<[cheesesInStock count]; i++) {
        for (NSUInteger j=0; j<[premiumCheeseNames count]; j++) {
            if ([cheesesInStock[i] isEqualToString:premiumCheeseNames[j]]) {
                return cheesesInStock[i];
            }
        }
    }
    
    return @"No premium cheeses in stock.";
}

- (NSArray*) arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSMutableArray* result = [NSMutableArray new];
    
    for (NSUInteger i=0; i<[moneyBags count]; i++) {
        [result addObject:[NSString stringWithFormat:@"$%lu", [moneyBags[i] length]]   ];
    }
    
    
    
    return result;
}

- (NSArray*) arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    NSMutableArray* result = [NSMutableArray new];
    for (NSUInteger i=0; i<[powers count]; i++) {
        NSString* _s = [powers[i]  uppercaseString];
        [result addObject:[NSString stringWithFormat:@"%@!", _s]];
    }
    
    return result;
}


@end
