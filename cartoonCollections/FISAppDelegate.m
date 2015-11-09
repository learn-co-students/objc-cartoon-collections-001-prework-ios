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
    NSString *rollCall = [[NSString alloc] init];
    for (NSInteger i = 0; i < [dwarfs count]; i++) {
        NSInteger dwarfNumber = i + 1;
            if (i <= 5) {
                rollCall = [rollCall stringByAppendingFormat: @"%li. %@ | ",dwarfNumber, dwarfs[i]];
            } else {
                rollCall = [rollCall stringByAppendingFormat: @"%li. %@",dwarfNumber, dwarfs[i]];
            }
        }
    return rollCall;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *shoutsArray = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < [powers count]; i++) {
        NSString *shoutsString = [powers[i] uppercaseString];
        shoutsString = [shoutsString stringByAppendingString:@"!"];
        [shoutsArray addObject: shoutsString];
     }
    return shoutsArray;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
       NSMutableString *shoutsString = [[NSMutableString alloc] init];
        for (NSInteger i = 0; i < [powers count]; i++) {
            NSString *shouts = [powers[i] uppercaseString];
            shoutsString = [shoutsString stringByAppendingFormat: @"\n%@!",shouts];
   }
    NSString *summonShout = [NSString stringWithFormat:@"Let our powers combine:%@\nGo Planet!",shoutsString];
return summonShout;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheeseInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    for (NSInteger i = 0; i < [premiumCheeseNames count]; i++) {
        if ([cheeseInStock containsObject:premiumCheeseNames[i]]) {
            return premiumCheeseNames[i];
        }
    }
    NSString *errorString = @"No premium cheeses in stock.";
    return errorString;
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSMutableArray *paperBillsArray = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < [moneyBags count]; i++) {
       NSInteger characterCount = [moneyBags[i] length];
        NSString *paperbills = [NSString stringWithFormat:@"$%ld",(long)characterCount];
        [paperBillsArray addObject:paperbills];
    }
    return paperBillsArray;
}



@end
