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
    NSString *dwarfsTogetherInString = @"";
    for (NSUInteger i = 0; i< dwarfs.count; i++) {
        if (i+1 < dwarfs.count) {
        dwarfsTogetherInString = [dwarfsTogetherInString stringByAppendingFormat:@"%li. %@ | ", i+1, dwarfs[i]];
        }else {
            dwarfsTogetherInString = [dwarfsTogetherInString stringByAppendingFormat:@"%li. %@", i+1, dwarfs[i]];
        }
    }
        
    return dwarfsTogetherInString;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *shouts = [[NSMutableArray alloc] init];
    NSString *lowercasePower = @"";
    for (NSUInteger i = 0; i<powers.count; i++) {
        lowercasePower = [NSString stringWithFormat:@"%@!", powers[i]];
        [shouts addObject:[lowercasePower uppercaseString]];
    }
    return shouts;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSString *summonCaptainPlanetPhrase = @"Let our powers combine:";
    NSArray *shoutElements = [self arrayOfPlaneteerShoutsFromArray:powers];
  /*  for (NSUInteger i = 0; i<powers.count; i++) {
        summonCaptainPlanetPhrase = [summonCaptainPlanetPhrase stringByAppendingFormat:@"\n%@", powers[i]];
    }
    summonCaptainPlanetPhrase = [summonCaptainPlanetPhrase stringByAppendingString:@"\nGo Planet!"];
*/
    for (NSUInteger i = 0; i<powers.count; i++) {
        summonCaptainPlanetPhrase = [summonCaptainPlanetPhrase stringByAppendingFormat:@"\n%@", shoutElements[i]];
    }
    summonCaptainPlanetPhrase = [summonCaptainPlanetPhrase stringByAppendingString:@"\nGo Planet!"];
    return summonCaptainPlanetPhrase;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *) cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    NSString *returnMessage = @"No premium cheeses in stock.";
    for (NSUInteger i = 0; i<cheesesInStock.count; i++) {
        for (NSUInteger j = 0; j<premiumCheeseNames.count; j++) {
            if ([cheesesInStock[i] isEqualToString:premiumCheeseNames[j]] ) {
                returnMessage = cheesesInStock[i];
            }
        }
    }
    
    return returnMessage;
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSMutableArray *paperBillsBag = [[NSMutableArray alloc] init];
    NSUInteger dollars = 0;
    for (NSUInteger i = 0; i<moneyBags.count; i++) {
        NSString *oldCoin = moneyBags[i];
        dollars = [oldCoin cStringLength];
        NSString *paperBill = [NSString stringWithFormat:@"$%li", dollars];
        [paperBillsBag addObject:paperBill];
        
    }
    
    return paperBillsBag;
}

@end
