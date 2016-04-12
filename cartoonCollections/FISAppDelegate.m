//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

//dwarf roll-call method
- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarves {
    NSString *dwarfString = @"";
    for (NSUInteger i = 0; i < [dwarves count]; i++) {
        dwarfString = [dwarfString stringByAppendingFormat:@"%lu. %@",i+1,dwarves[i]];
        if (i < [dwarves count]-1) {
            dwarfString = [dwarfString stringByAppendingFormat:@" | "];
        }
    }
    return dwarfString;
}


// method that helps the planeteers shout!
- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    NSMutableArray *powersMutable = [[NSMutableArray alloc] initWithArray:powers];
    for (NSUInteger i =0; i < [powersMutable count]; i++) {
        powersMutable[i] = [powersMutable[i] uppercaseString];
        [powersMutable[i] appendString:@"!"];
    }
    return powersMutable;
}


//let's summon the captain!
- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSString *summonCaptainWithShouts = @"Let our powers combine:\n";
    NSMutableArray *powerShoutsOneByOne = [[NSMutableArray alloc] initWithArray:[self arrayOfPlaneteerShoutsFromArray:powers]];
    for (NSUInteger i = 0; i < [powerShoutsOneByOne count]; i++) {
        summonCaptainWithShouts = [summonCaptainWithShouts stringByAppendingFormat:@"%@\n",powerShoutsOneByOne[i]];
    }
    summonCaptainWithShouts = [summonCaptainWithShouts stringByAppendingString:@"Go Planet!"];
    return summonCaptainWithShouts;
}


// method to compare two arrays for finding premium cheese
- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        for (NSUInteger j = 0; j < [cheesesInStock count]; j++) {
            if ([premiumCheeseNames[i] isEqualToString:cheesesInStock[j]]) {
                return premiumCheeseNames[i];
            }
        }
    }
    return @"No premium cheeses in stock.";
}


/*convert the coins into dollar bills via arrays. ignoring any incorrect inputs (such as a string like "$$$$345#@$$").
If this was the case then a loop in the string to count each $ would be used.*/
- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSMutableArray *arrayOfDollarBills = [[NSMutableArray alloc] init];
    for (NSUInteger i =0; i < [moneyBags count]; i++) {
        NSUInteger dollarBills = [moneyBags[i] length];
        NSString *dollarBillString = [NSString stringWithFormat:@"$%lu",dollarBills];
        [arrayOfDollarBills addObject:dollarBillString];
    }
    return arrayOfDollarBills;
}

@end


