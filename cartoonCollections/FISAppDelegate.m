//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //NSArray *test = @[@1, @2, @5, @20, @22];
    //[self arrayByConvertingMoneyBagsIntoPaperBills:test];
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray: (NSArray *)dwarfs {
    NSString *rollCall = @"";
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        NSUInteger index = i + 1;
        NSString *dwarfName = dwarfs[i];
        rollCall = [rollCall stringByAppendingFormat:@"%lu. %@", index, dwarfName];
        if (i < [dwarfs count]-1) {
            rollCall = [rollCall stringByAppendingString:@" | "];
        }
    }
    return rollCall;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray: (NSArray *)powers {
    NSMutableArray *yelling = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *shout = [NSString stringWithFormat:@"%@!", [powers[i] uppercaseString]];
        [yelling addObject:shout];
    }
    
    return yelling;
}

-(NSString *)summonCaptainPlanetWithPowers: (NSArray *)powers {
    NSString *summonPhrase = @"Let our powers combine:\n";
    NSArray *shout = [self arrayOfPlaneteerShoutsFromArray:powers];
    for (NSUInteger i = 0; i < [shout count]; i++) {
        NSString *power = shout[i];
        summonPhrase = [summonPhrase stringByAppendingFormat:@"%@\n", power];
    }
    summonPhrase = [summonPhrase stringByAppendingString:@"Go Planet!"];
    //NSLog(@"%@", summonPhrase);
    return summonPhrase;
}

-(NSString *)firstPremiumCheeseInStock: (NSArray *)cheesesInStock premiumCheeseNames: (NSArray *)premiumCheeseNames {
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        NSString *checkForCheese = premiumCheeseNames[i];
        
        for (NSUInteger i = 0; i < [cheesesInStock count]; i++) {
            NSString *cheeseInStock = cheesesInStock[i];
            if ([checkForCheese isEqualToString:cheeseInStock]) {
                return checkForCheese;
            }
        }
    }
    NSString *noneInStock = @"No premium cheeses in stock.";
    return noneInStock;
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *)moneyBags {
    NSMutableArray *scroogesPaperBills = [[NSMutableArray alloc]init];
    //NSLog(@"%@", moneyBags);
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSString *coins = moneyBags[i];
        NSUInteger numberOfCoins = [coins length];
        NSString *paperBill = @"$";
        paperBill = [paperBill stringByAppendingFormat:@"%lu", numberOfCoins];
        [scroogesPaperBills addObject:paperBill];
       
    }
    //NSLog(@"%@", scroogesPaperBills);
    return scroogesPaperBills;
    
}


@end
