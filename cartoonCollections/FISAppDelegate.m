//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
   
    NSMutableString *result = [NSMutableString new];
    NSUInteger lastIndex = [dwarfs count] -1;
    for (NSUInteger i = 0; i < dwarfs.count; i++) {
        
        NSString *dwarfName = [dwarfs objectAtIndex:i];
        NSUInteger listNumber = i + 1;
        
        [result appendFormat:@"%lu. %@", listNumber, dwarfName];
        
        if (i < lastIndex) {
            [result appendString:@" | "];
        }
    }
    
    return result;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    
    NSMutableArray *newPowersArray = [NSMutableArray new];
    for (NSUInteger i = 0; i < powers.count; i++) {
        NSString *powersAsString = powers[i];
        NSString *powersAsUppercase = [powersAsString uppercaseString];
        NSString *uppercasePlusExclamation = [powersAsUppercase stringByAppendingString:@"!"];
        
        [newPowersArray addObject:uppercasePlusExclamation];
    }
    return newPowersArray;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
   
    NSMutableString *summonCaptainPhrase = [NSMutableString new];
    [summonCaptainPhrase appendString:@"Let our powers combine:"];

    NSArray *newPowersArray = [self arrayOfPlaneteerShoutsFromArray:powers];
    for (NSUInteger i = 0; i < [newPowersArray count]; i++) {
        NSString *shoutAsString = newPowersArray[i];
        
        [summonCaptainPhrase appendFormat:@"\n%@", shoutAsString];
    }
    
    [summonCaptainPhrase appendString:@"\nGo Planet!"];
    
    return summonCaptainPhrase;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    for (NSUInteger i = 0; i < premiumCheeseNames.count; i++) {
        NSString *cheeseName = premiumCheeseNames[i];
        
        if ([cheesesInStock containsObject:cheeseName]) {
            return cheeseName;
        }
    }
        return @"No premium cheeses in stock.";
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSMutableArray *paperMoneyIsTheNextBigThing = [NSMutableArray new];
    
    for (NSUInteger i = 0; i < moneyBags.count; i++) {
        NSString *dollarCoins = moneyBags[i];
        NSUInteger howManyDollarCoins = [dollarCoins length];
        
        NSString *coinsAsBills = [NSString stringWithFormat:@"$%lu", howManyDollarCoins];
       
        [paperMoneyIsTheNextBigThing addObject:coinsAsBills];
        
    }
    
    
    return paperMoneyIsTheNextBigThing;
}




@end
