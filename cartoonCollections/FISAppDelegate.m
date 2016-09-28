//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *) stringByRollCallingDwarfsInArray: (NSArray *) dwarfs {
    NSMutableString *rollCall = [[NSMutableString alloc]initWithString:@""];
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
            if(i == 0){
                [rollCall appendFormat:@"%lu. %@",i+1,dwarfs[i]];
                }else{
                    [rollCall appendFormat:@" | %lu. %@",i+1,dwarfs[i]];
                    }
            }
    return rollCall;
}

- (NSArray *) arrayOfPlaneteerShoutsFromArray: (NSArray *) powers {
    NSMutableArray *shout = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        [shout addObject:[[powers[i] uppercaseString]mutableCopy]];
        [shout[i] appendFormat:(@"!")];
    }
    return shout;
}
- (NSString *) summonCaptainPlanetWithPowers: (NSArray *) powers {
    NSMutableString *combined = [[NSMutableString alloc]initWithString:@"Let our powers combine:"];
for (NSUInteger i = 0; i < [powers count]; i++)[combined appendFormat:@"\n%@!",[powers[i]uppercaseString]];
    [combined appendFormat:@"\nGo Planet!"];
    return combined;
}
- (NSString *) firstPremiumCheeseInStock: (NSArray *) cheesesInStock premiumCheeseNames: (NSArray *) premiumCheeseNames {
    NSMutableString *compare = [[NSMutableString alloc]init];
    
    for(NSUInteger i = 0; i < [cheesesInStock count]; i++){
        NSUInteger j = 0;
            if (cheesesInStock[i] != premiumCheeseNames[j]){
            j++;
            }
        
            if(j == [premiumCheeseNames count]){
            compare = [@"No premium cheeses in stock." mutableCopy];
            }else{
            compare = [premiumCheeseNames[j] mutableCopy];
            }
        
        }
    return compare;
}

- (NSArray *) arrayByConvertingMoneyBagsIntoPaperBills: (NSArray*) moneyBags {
    NSMutableArray * convert = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        convert[i] = [@"$" mutableCopy];
        NSUInteger j = [moneyBags[i] length];
        [convert[i] appendFormat:@"%lu",(unsigned long)j];
    }
    return convert;
}


@end
