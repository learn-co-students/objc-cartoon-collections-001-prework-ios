//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSMutableString *dwarfRoster = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < dwarfs.count; i++) {
        
        if (i == dwarfs.count - 1) {
            [dwarfRoster appendFormat:@"%li. %@", i + 1, [dwarfs objectAtIndex:i]];
        } else {
            [dwarfRoster appendFormat:@"%li. %@ | ", i + 1, [dwarfs objectAtIndex:i]];
        }
        
    }
    
    return dwarfRoster;
    
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {

    NSMutableArray *powersMutable = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < powers.count; i++) {
        NSMutableString *powersShout = [[NSMutableString alloc] init];
        NSString *powerString = [powers objectAtIndex:i];
        [powerString uppercaseString];
        
        [powersShout appendFormat:@"%@!", [powerString uppercaseString]];
        
        [powersMutable addObject:powersShout];
    }
    
    return powersMutable;
    
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {

    // get the shouting of those bratty kids
    NSArray *powersShout = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    NSMutableString *captinPlanetShout = [[NSMutableString alloc] init];
    
   // Let our powers combine:\nEARTH!\nFIRE!\nWIND!\nWATER!\nHEART!\nGo Planet!");
    
    for (NSUInteger i = 0; i < powersShout.count; i++) {
        if (i == 0) {
            [captinPlanetShout appendString:@"Let our powers combine:\n"];
        }         
        [captinPlanetShout appendFormat:@"%@\n", [powersShout objectAtIndex:i]];
    }
    
    [captinPlanetShout appendString:@"Go Planet!"];
    
    NSString *returnCaptainPlanetString = captinPlanetShout;
    
    return returnCaptainPlanetString;
    
    
    return nil;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    BOOL doWeHaveTheCheese = FALSE;
    NSString *cheeseInStock = [[NSString alloc] init];
    NSString *weDontHaveTheCheese = [[NSString alloc] init];
    
    for (NSUInteger i = 0; i < cheesesInStock.count; i++) {
        NSString *cheeseWeHave = [cheesesInStock objectAtIndex:i];
        
        for (NSUInteger y = 0; y < premiumCheeseNames.count; y++) {
            NSString *premiumCheese = [premiumCheeseNames objectAtIndex:y];
            
            if ([cheeseWeHave isEqualToString:premiumCheese]) {
                doWeHaveTheCheese = TRUE;
                cheeseInStock = premiumCheese;
            } else {
                weDontHaveTheCheese = @"No premium cheeses in stock.";
            }
        }
    }
    
    if (doWeHaveTheCheese) {
        return cheeseInStock;
    } else {
        return weDontHaveTheCheese;
    }
    
    
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {

    NSMutableArray *moneyBagIntegers = [[NSMutableArray alloc] init];

    
    for (NSUInteger i = 0; i < moneyBags.count; i++) {

        NSString *dollarSign = [moneyBags objectAtIndex:i];
        NSInteger dollarSignLength = dollarSign.length;
        NSNumber *dollarSignNumber = @(dollarSignLength);
        NSMutableString *finalString = [[NSMutableString alloc] init];
        
        [finalString appendFormat:@"$%@", dollarSignNumber];
        
        [moneyBagIntegers addObject:finalString];
        
    }
    
    NSArray *returnArray = [NSArray arrayWithArray:moneyBagIntegers];
    
    return returnArray;
    
}



@end
