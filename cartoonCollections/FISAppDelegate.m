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
    NSMutableString *rollCall = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        NSUInteger dwarfNumber = i + 1;
        NSString *dwarfName = dwarfs[i];
        
        NSString *formattedDwarf = [NSString stringWithFormat:@"%lu. %@", dwarfNumber, dwarfName];
        NSString *pipe = [NSString stringWithFormat:@" | "];
        
        [rollCall appendString:formattedDwarf];
        
        if (dwarfs[i] == [dwarfs lastObject]) {
        } else {
            [rollCall appendString:pipe];
        }
    }
    return rollCall;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *shouts = [powers mutableCopy];
    for (NSUInteger i = 0; i < [shouts count]; i++) {
        [shouts replaceObjectAtIndex:i withObject:[shouts[i] stringByAppendingFormat:@"!"]];
        [shouts replaceObjectAtIndex:i withObject:[shouts[i] uppercaseString]];
    }
    return shouts;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSString *intro = @"Let our powers combine:\n";
    NSMutableString *body = [[NSMutableString alloc]init];
    NSString *outro = @"Go Planet!";
    NSArray *powersShouted = [self arrayOfPlaneteerShoutsFromArray:powers];
    for (NSUInteger i = 0; i < [powers count]; i++) {
        [body appendFormat:@"%@\n", powersShouted[i]];
    }
    NSString *catchPhrase = [NSString stringWithFormat:@"%@%@%@", intro, body, outro];
    return catchPhrase;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    NSString *notInStock = @"No premium cheeses in stock.";
    NSString *cheeseStatus = @"";
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        NSString *premiumCheeseName = premiumCheeseNames[i];
        NSString *cheesesinStock = cheesesInStock[i];
        
        NSLog(@"%@", premiumCheeseName);
        NSLog(@"%@", cheesesinStock);
        
        if (premiumCheeseName == cheesesinStock) {
            cheeseStatus = premiumCheeseName;
            i = [premiumCheeseNames count];
        } else {
            cheeseStatus = notInStock;
        }
    }
    return cheeseStatus;
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    return nil;
}

@end
