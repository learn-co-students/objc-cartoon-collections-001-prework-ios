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

-(NSString*)stringByRollCallingDwarfsInArray:(NSArray*)dwarfs;{
    
    NSMutableString *output = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        NSUInteger index = i + 1;
        NSString *new = dwarfs[i];
        
        if (i < 6){
            [output appendFormat:@"%lu. %@ | ", index, new];
        }
        else{
            [output appendFormat:@"%lu. %@", index, new];}
        
    }
    return output;}

-(NSArray*)arrayOfPlaneteerShoutsFromArray:(NSArray*)powers;{
    NSMutableArray *output = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *upperCase = powers[i];
        upperCase = [upperCase uppercaseString];
        NSString *upperCaseWithExclamation = [upperCase stringByAppendingString:@"!"];
        
        [output addObject:upperCaseWithExclamation];
      
    }
    
    return output;}

-(NSString*)summonCaptainPlanetWithPowers:(NSArray*)powers;{
    NSMutableString *output = [[NSMutableString alloc]init];
    [output appendString:@"Let our powers combine:"];
    
    NSArray *yelledPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *arrayToString = yelledPowers[i];
        [output appendFormat:@"\n%@", arrayToString];}
        
    [output appendString:@"\nGo Planet!"];
    return output;}

-(NSString*)firstPremiumCheeseInStock:(NSArray*)cheesesInStock premiumCheeseNames:(NSArray*)premiumCheeseNames;{
    NSMutableString *output = [[NSMutableString alloc]init];
    
    NSUInteger stockCount = [cheesesInStock count];
    NSUInteger premiumCount = [premiumCheeseNames count];
    

    
    NSLog(@"%lu, %lu", stockCount, premiumCount);
    
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i++) {
        NSString *cheeseStockCount = cheesesInStock[i];
        NSString *premiumCheeseCount = premiumCheeseNames[i];
        
        if ([premiumCheeseNames count] >= 3){
            if ([cheeseStockCount isEqualToString:premiumCheeseCount]){
                [output appendString:cheeseStockCount];
            }
        
        }
        else {
            [output appendString:(@"No premium cheeses in stock.")];
        }
    }
   
    
    return output;}

-(NSArray*)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray*)moneyBags;{
    NSMutableArray *toDollars = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        
        NSString *bagItem = moneyBags[i];
        NSUInteger coinsToBills = [bagItem length];
        NSNumber *intToNumber = @(coinsToBills);
        
        NSString *conversion = [intToNumber stringValue];
        NSString *finalConversion = [NSString stringWithFormat:@"$%@", conversion];
        
        [toDollars addObject:finalConversion];
    }
    
    
    return toDollars;}

@end
