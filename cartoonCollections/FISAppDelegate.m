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

-(NSString*) stringByRollCallingDwarfsInArray: (NSArray*) dwarfs {
    
    NSMutableString *dwarfCall = [NSMutableString new];
    
    if (dwarfs.count > 0) {
        [dwarfCall appendFormat: @"1. %@", dwarfs[0]];
    }
    
    for (NSUInteger i = 1; i < dwarfs.count; i++) {
        [dwarfCall appendFormat: @" | %lu. %@", i+1, dwarfs[i]];
    }
    
    
    return dwarfCall;
}

-(NSArray*) arrayOfPlaneteerShoutsFromArray: (NSArray*) powers {
    NSMutableArray *shouts = [NSMutableArray new];
    
    for (NSUInteger i = 0; i < powers.count; i++){
    
    NSMutableString *string = [@"" mutableCopy];
    
    [string appendFormat: @"%@!", [powers[i] uppercaseString]];
    [shouts addObject: string];
    }

    return shouts;
}

-(NSString*) summonCaptainPlanetWithPowers: (NSArray*) powers {
    NSMutableString *capPhrase = [NSMutableString new];
    
    [capPhrase appendFormat: @"Let our powers combine:"];
    
    NSArray *power = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSUInteger i = 0; i < powers.count; i++){
        
        [capPhrase appendFormat: @"\n%@", power[i]];
    }
    [capPhrase appendString: @"\n Go Planet!"];
    
    
    return capPhrase;
}

-(NSString*) firstPremiumCheeseInStock: (NSArray*) cheesesInStock premiumCheeseNames: (NSArray*) premiumCheeseNames {
    
    for (NSUInteger i = 0; i < cheesesInStock.count; i ++) {
    
    NSString *inStock = cheesesInStock[i];
    
        if ([premiumCheeseNames containsObject: inStock]) {
        return inStock;
      }
    
    }
    return @"No premium cheeses in stock.";
}

-(NSArray*) arrayByConvertingMoneyBagsIntoPaperBills: (NSArray*) moneyBags {
    
    NSMutableArray *bills = [NSMutableArray new];
    
    for (NSUInteger i = 0; moneyBags.count; i++) {
        
        NSMutableString *bags = [NSMutableString new];
        
        [bags appendFormat: @"$%lu", [moneyBags[i] length]];
        
        [bills addObject: bags];
        
    }
    
    return bills;
}






@end
