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
        [rollCall appendFormat:@"%lu. %@ | ",rollCallNumber, rollCallName];
        
        
    }
    NSLog(@"%@", rollCall);
    return rollCall;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    return nil;
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
