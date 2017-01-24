//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


//Given array of dwarf names, return string listing dwarf names and numbers
//in format "1. [name 1] | 2. [name 2] [...] | n. [name n]"
- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{

    NSUInteger numDwarfs = [dwarfs count];
    NSMutableString *rollCall = [[NSMutableString alloc] init];
    
    for(NSUInteger i = 0; i < numDwarfs; i++){
        [rollCall appendFormat:@"%lu. %@", i+1, dwarfs[i]];
        
        if(i < (numDwarfs - 1)){
            [rollCall appendString:@" | "]; //Don't append pipe after final name
        }
    }
    
    return rollCall;
}

//Given array of planeteer powers, return array of shouts (uppercase power followed by !)
- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    
    NSMutableArray *shouts = [[NSMutableArray alloc] init];
    
    NSUInteger numShouts = [powers count];
    
    for(NSUInteger i = 0; i < numShouts; i ++){
        NSString *shout = [[powers[i] uppercaseString] stringByAppendingString:@"!"];
        
        [shouts addObject:shout];
    }
    
    return shouts;
}

//Given array of planeteer powers, return string containing incantation to summon Captain Planet
//Uses arrayOfPlaneteerShoutsFromArray to generate shouts from powers
- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    
    NSMutableString *summoningPhrase = [[NSMutableString alloc] init];
    NSArray *shouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSUInteger numShouts = [shouts count];
    
    [summoningPhrase appendString:@"Let our powers combine:\n"];
    
    for(NSUInteger i = 0; i < numShouts; i++){
        [summoningPhrase appendFormat:@"%@\n", shouts[i]];
    }
    
    [summoningPhrase appendString:@"Go Planet!"];
    
    return summoningPhrase;
}


//Compare each cheese in stock to list of premium cheese names and return the first match, or error message if no match
- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    
    NSUInteger numInStock = [cheesesInStock count];
    NSUInteger numPremium = [premiumCheeseNames count];
    
    for (NSUInteger i = 0; i < numInStock; i++){
        for (NSUInteger j = 0; j < numPremium; j++){
            
            if([cheesesInStock[i] isEqualToString:premiumCheeseNames[j]]){
                return cheesesInStock[i];
            }
        }
    }
    
    return @"No premium cheeses in stock.";
}

//Given array of strings representing money bags, return array with count of '$' in each bag, prefixed by dollar sign
- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    
    NSMutableArray *bills = [[NSMutableArray alloc] init];
    
    NSUInteger numBags = [moneyBags count];
    
    for (NSUInteger i = 0; i < numBags; i++){
        NSString *s = moneyBags[i];
        NSUInteger slen = [s length];
        NSUInteger dollars = 0;
        
        NSMutableString *bill = [[NSMutableString alloc] initWithString:@"$"];
        
        for(NSUInteger j = 0; j < slen; j++){
            if([s characterAtIndex:j] == '$'){
                dollars++;
            }
        }
        
        [bill appendFormat:@"%lu", dollars];
        [bills addObject:bill];
        
    }
    
    return bills;
}


@end
