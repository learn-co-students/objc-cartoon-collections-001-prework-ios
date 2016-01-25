//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    NSMutableString *expectedRollCall = [[NSMutableString alloc] init];
    for (NSInteger i = 0; i < dwarfs.count; i++){
        [expectedRollCall appendFormat:@"%lu. %@", i + 1, dwarfs[i]];
        if(i < (dwarfs.count - 1)){
            [expectedRollCall appendString:@" | "];
        }
    }
    return expectedRollCall;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    NSMutableArray *powersAsShouts = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < powers.count; i++){
        NSString *uppercasePower = [powers[i] uppercaseString];
        NSString *powerAsShout = [uppercasePower stringByAppendingString: @"!"];
        [powersAsShouts addObject:powerAsShout];
    }
    return [NSArray arrayWithArray:powersAsShouts];
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSMutableString *summons = [[NSMutableString alloc] initWithString:@"Let our powers combine:"];
    NSArray *powersAsShouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    for(NSInteger i = 0; i < powers.count; i++){
        [summons appendFormat:@"\n%@", powersAsShouts[i]];
    }
    [summons appendFormat:@"\nGo Planet!"];
    return [NSString stringWithString:summons];
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    NSString *noPremiumCheeseInStock = @"No premium cheeses in stock.";
    NSMutableString *premiumCheeseInStock = [[NSMutableString alloc] init];
    for (NSInteger i = 0; i < cheesesInStock.count; i++){
        for (NSInteger j = 0; j < premiumCheeseNames.count; j++){
            if(cheesesInStock[i] == premiumCheeseNames[j]){
                [premiumCheeseInStock appendString:premiumCheeseNames[j]];
            }
        }
    }
    if(premiumCheeseInStock.length == 0)
        return noPremiumCheeseInStock;
    else
        return premiumCheeseInStock;
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSMutableArray *moneyPaperBills = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < moneyBags.count; i++){
        NSString *moneyBag = moneyBags[i];
        NSString *paperBill = [NSString stringWithFormat:@"$%lu", moneyBag.length];
        [moneyPaperBills addObject:paperBill];
    }
    return moneyPaperBills;
}

@end
