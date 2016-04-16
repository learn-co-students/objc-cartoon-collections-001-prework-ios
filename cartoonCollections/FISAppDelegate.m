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

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    NSMutableString *rollCall = [[NSMutableString alloc]init];
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        NSUInteger rollCallNumber = i + 1;
        NSString *rollCallName = [dwarfs objectAtIndex:i];
        
        if (i == 0) {
            [rollCall appendFormat:@"%lu. %@",rollCallNumber, rollCallName];
        }else{
        [rollCall appendFormat:@" | %lu. %@",rollCallNumber, rollCallName];
        }
    }
    
    return rollCall;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    NSString *powerShout =
    @"%@";
    NSMutableArray *powersShouted = [powers mutableCopy];
    for (NSUInteger i = 0; i < [powers count]; i++) {
        powerShout = [NSString stringWithFormat:@"%@!",powers[i]];
        powerShout = [powerShout uppercaseString];
        [powersShouted replaceObjectAtIndex:i withObject:powerShout];
        
        }
   
    return powersShouted;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    return nil;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    return nil;
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    return nil;
}


@end
