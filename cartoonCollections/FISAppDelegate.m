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

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs
{
    
    NSUInteger numberOfDwarfs = [dwarfs count];
    NSMutableString *dwarfCall = [[NSMutableString alloc] init];
    
    for(NSUInteger i =0; i < numberOfDwarfs; i++)
    {
        NSUInteger dwarfNumber = i+1;
        NSString *dwarfName = dwarfs[i];
        BOOL isFirstDwarf = (i==0);
        BOOL isLastDwarf = (i==(numberOfDwarfs-1));
        
        if(isFirstDwarf)
        {
            [dwarfCall appendFormat:@"%lu. %@ |", dwarfNumber, dwarfName];
        }
        else if(isLastDwarf)
        {
            [dwarfCall appendFormat:@" %lu. %@", dwarfNumber, dwarfName];
        }
        else
        {
            [dwarfCall appendFormat:@" %lu. %@ |", dwarfNumber, dwarfName];
        }
    }
    
    return dwarfCall;
    
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers
{
    NSMutableArray *shouts = [[NSMutableArray alloc] init];
    
    NSUInteger powerLength = [powers count];
    
    for(NSUInteger i =0; i < powerLength; i++)
    {
        NSMutableString *newShout = [[NSMutableString alloc] init];
        
        NSString *powerUpperCase = [powers[i] uppercaseString];
        
        [newShout appendFormat:@"%@!", powerUpperCase];
        
        [shouts addObject:newShout];
    }
    
    return shouts;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers
{
    NSArray *powersShouted = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSUInteger powersShoutedLength = [powersShouted count];
    
    NSMutableString *summonCaptainPlanet = [[NSMutableString alloc] init];
    
    [summonCaptainPlanet appendFormat:@"Let our powers combine:\n"];
    
    for( NSUInteger i = 0; i < powersShoutedLength; i++)
    {
    
        NSString *individualShout = powersShouted[i];
        [summonCaptainPlanet appendFormat:@"%@\n", individualShout];
        
    }
    
    [summonCaptainPlanet appendFormat:@"Go Planet!"];
    
    return summonCaptainPlanet;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames
{
    
    NSUInteger inStockLength = [cheesesInStock count];
    NSUInteger cheeseNamesLength = [premiumCheeseNames count];
    
    NSMutableArray *locationOfCheesesInStock = [[NSMutableArray alloc] init];
    
    for( NSUInteger i = 0; i < cheeseNamesLength; i++)
    {
        for (NSUInteger j = 0; j < inStockLength; j++)
        {
            BOOL inStock = [premiumCheeseNames[i] isEqualToString:cheesesInStock[j]];
            
            if(inStock)
            {
                NSNumber *locationInCheeseArray = @(i);
                [locationOfCheesesInStock addObject:locationInCheeseArray];
            }
            
        }
    }
    
    NSUInteger numberOfCheesesInStock = [locationOfCheesesInStock count];
    BOOL nothingInStock = numberOfCheesesInStock==0;
    NSMutableString *responseToJerry = [[NSMutableString alloc] init];
    
    
    if(nothingInStock)
    {
        [responseToJerry appendString:@"No premium cheeses in stock."];
    }
    else
    {
        NSUInteger locationOfFirst = [locationOfCheesesInStock[0] integerValue];
        NSString *firstCheese = premiumCheeseNames[locationOfFirst];
        
        [responseToJerry appendFormat:@"%@",firstCheese];
    }
    
    return responseToJerry;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags
{
    NSUInteger moneyBagsLength = [moneyBags count];
    NSMutableArray *paperBillsArray = [[NSMutableArray alloc] init];
    
    for( NSUInteger i = 0; i < moneyBagsLength; i++)
    {
        NSMutableString *paperBills = [[NSMutableString alloc] init];
        NSString *coinString = moneyBags[i];
        NSUInteger coinStringLength = [coinString length];
        [paperBills appendFormat:@"$%lu", coinStringLength];
        [paperBillsArray addObject:paperBills];
    
    }
    
    return paperBillsArray;
}

@end
