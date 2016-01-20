//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSString *separator = @" | ";
    
    NSMutableString *string = [@"" mutableCopy];
    
    for (int i = 0; i < [dwarfs count]; i++) {
        [string appendFormat:@"%i. %@%@", i+1, dwarfs[i], separator];
    }
    return [string substringToIndex:[string length]-[separator length]];
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    NSMutableArray *shout = [[NSMutableArray alloc] init];
     for (NSUInteger i = 0; i < [powers count]; i++) {
      NSMutableString *string = [@"" mutableCopy];
     [string appendFormat:@"%@!", [powers[i] uppercaseString]];
     [shout addObject:string];
     }
   /** NSString *string = [[NSString alloc]init];

    for (NSUInteger i = 0; i < [powers count]; i++) {
        
     string = [NSString stringWithFormat:@"%@!", [powers[i] uppercaseString]];
     [shout addObject:string];
    }
    **/
    return shout;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    NSMutableString *phraseBegin = [[NSMutableString alloc]init];
    [phraseBegin appendFormat:@"Let our powers combine:"];
    NSArray *powersShout = [self arrayOfPlaneteerShoutsFromArray:powers];
    for(NSUInteger i = 0; i < [powers count]; i++){
        
        [phraseBegin appendFormat:@"\n%@", powersShout[i]];
    }
    
    [phraseBegin appendString:@"\nGo Planet!"];
    return phraseBegin;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    
    for (NSUInteger i = 0; i < [cheesesInStock count]; i++)
    {
        NSString *stock = cheesesInStock[i];
        
        if ([premiumCheeseNames containsObject:stock]) {
            return stock;
        }
    }
    return @"No premium cheeses in stock.";
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    NSMutableArray *bills = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++){
        NSMutableString *bags = [[NSMutableString alloc]init];
        [bags appendFormat:@"$%lu", [moneyBags[i] length]];
        [bills addObject:bags];
    }
    return bills;
}


/**
 
 *  Define your method implementations here.
 
 */

@end
