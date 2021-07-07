//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *) stringByRollCallingDwarfsInArray: (NSArray *)dwarfs {
    NSMutableString *dwarfsList = [[NSMutableString alloc]init];
    for (NSUInteger i = 0; i < dwarfs.count; i++) {
        if (i == dwarfs.count - 1) {
            [dwarfsList appendFormat:@"%lu. %@", i + 1, dwarfs[i]];
        }
            else {
        [dwarfsList appendFormat:@"%lu. %@ | ", i + 1, dwarfs[i]];
            }
    }
    return dwarfsList;
}

- (NSArray *) arrayOfPlaneteerShoutsFromArray: (NSArray *)powers {
    NSMutableArray *powersShout = [[NSMutableArray alloc] init];
    NSMutableString *powersString = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < powers.count; i++) {
        powersString = [NSMutableString stringWithFormat:@"%@!", [powers[i] uppercaseString]];
        [powersShout addObject:powersString];
    }
    return powersShout;
}

- (NSString *) summonCaptainPlanetWithPowers: (NSArray *)powers {
    NSString *captainPlanetSummons = @"Let our powers combine:";
    NSArray *nPowersShout = [self arrayOfPlaneteerShoutsFromArray:(NSArray *) powers];
    NSString *newLine = @"\n";
    
    for (NSInteger summons = 0; summons < nPowersShout.count; summons++) {
        captainPlanetSummons = [captainPlanetSummons stringByAppendingString:newLine];
        captainPlanetSummons = [captainPlanetSummons stringByAppendingString:(nPowersShout[summons])];
    }
    
    captainPlanetSummons = [captainPlanetSummons stringByAppendingString:(@"\nGo Planet!")];
    return captainPlanetSummons;
}

- (NSString *) firstPremiumCheeseInStock: (NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    NSString *checkInStock = @"No premium cheeses in stock.";
    for (NSInteger i = 0; i < premiumCheeseNames.count; i++) {
        BOOL isCheesePresent = [cheesesInStock containsObject: premiumCheeseNames[i]];
        if (isCheesePresent == YES) {
            return cheesesInStock[i];
            }
    }
    return checkInStock;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *)moneyBags {
    NSMutableArray *paperBillsConverted = [[NSMutableArray alloc]init];
    for (NSInteger i = 0; i < moneyBags.count; i++) {
        NSUInteger characterCount = [moneyBags[i] length];
        NSNumber *paperBills = @(characterCount);
        NSString *bills = [NSString stringWithFormat:@"$%@", paperBills];
        [paperBillsConverted addObject:bills];
    }
    return paperBillsConverted;
}
@end
