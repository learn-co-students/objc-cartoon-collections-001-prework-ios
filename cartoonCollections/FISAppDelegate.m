//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSArray *dwarfs = @[@"Doc", @"Grumpy", @"Happy", @"Sleepy", @"Bashful", @"Sneezy", @"Dopey"];
    NSArray *powers = @[ @"earth", @"fire", @"wind", @"water", @"heart" ];
    NSArray *cheesesInStock = @[@"cheddar", @"camembert", @"string cheese"];
    NSArray *premiumCheeseNames = @[@"brie", @"camembert", @"jarlsberg"];
    NSArray *moneyBags = @[ @"$$$$$", @"$$", @"$", @"$$$$$$$$$$"];
    
    NSString *dwarfNames = [self stringByRollCallingDwarfsInArray:dwarfs];
    NSArray *shouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSString *summon = [self summonCaptainPlanetWithPowers:powers];
    NSString *firstCheese = [self firstPremiumCheeseInStock:cheesesInStock premiumCheeseNames:premiumCheeseNames];
    NSArray *paperBills = [self arrayByConvertingMoneyBagsIntoPaperBills:moneyBags];

    NSLog(@"%@", dwarfNames);
    NSLog(@"%@", shouts);
    NSLog(@"%@", summon);
    NSLog(@"%@", firstCheese);
    NSLog(@"%@", paperBills);
    
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray: (NSArray *)dwarfs{
    NSMutableString *dwarfNamesMutable = [[NSMutableString alloc] init];
    for(NSUInteger i = 0; i < [dwarfs count]; i++){
        [dwarfNamesMutable appendFormat:@"%li. %@ | ", i+1 , dwarfs[i]];
    }
    [dwarfNamesMutable setString:[dwarfNamesMutable substringToIndex:[dwarfNamesMutable length]-3]]; //trim the last pipe
    NSString *dwarfNamesString = [dwarfNamesMutable copy];
    return dwarfNamesString;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray: (NSArray *)powers{
    NSMutableArray *powersMutable = [[NSMutableArray alloc] init];
    NSMutableString *formattedString1 = [[NSMutableString alloc] init];
    NSMutableString *formattedString2 = [[NSMutableString alloc] init];
    for(NSUInteger i = 0; i < [powers count]; i++){
        formattedString1 = [powers[i] mutableCopy];
        formattedString2 = [formattedString1 uppercaseString];
        [formattedString2 appendString:@"!"];
        [powersMutable addObject:formattedString2];
    }
    return powersMutable;
}

- (NSString *)summonCaptainPlanetWithPowers: (NSArray *)powers{
    // "Let our powers combine:\nEARTH!\nFIRE!\nWIND!\nWATER!\nHEART!\nGo Planet!"
    NSMutableString *powersString = [[NSMutableString alloc] init];
    NSMutableString *results = [[NSMutableString alloc] init];
    [results appendString:@"Let our powers combine:"];
    NSArray *shouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    for(NSUInteger i = 0; i < [shouts count]; i++){
        powersString = [shouts[i] mutableCopy];
        [results appendFormat:@"\n%@", powersString];
    }
    [results appendString:@"\nGo Planet!"];
    return results;
}

- (NSString *)firstPremiumCheeseInStock: (NSArray *)cheesesInStock premiumCheeseNames: (NSArray *)premiumCheeseNames{
    NSMutableString *results = [[NSMutableString alloc] init];
    [results setString:@"No premium cheeses in stock."];
    for(NSUInteger i = 0; i < [cheesesInStock count]; i++){
        for(NSUInteger a = 0; a < [premiumCheeseNames count]; a++){
            if([cheesesInStock[i] isEqualToString:premiumCheeseNames[a]]){
                [results setString:premiumCheeseNames[a]];
                return results;
            }
        }
    }
    return results;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *)moneyBags{
    NSArray *scroogesPaperBills = @[ @"$5", @"$1", @"$2", @"$10" ];
    NSMutableArray *results = [[NSMutableArray alloc] init];
    NSMutableString *paperBill =[[NSMutableString alloc] init];
    NSMutableString *paperBillTrimmed =[[NSMutableString alloc] init];
    
    
    for(NSUInteger i = 0; i < [moneyBags count]; i++){
        NSUInteger coinCount = [moneyBags[i] length]; // get int from coin strings > $$$$
        
        for(NSUInteger a = 0; a < [scroogesPaperBills count]; a++){
            [paperBill setString:scroogesPaperBills[a]];
            [paperBillTrimmed setString:[paperBill substringFromIndex:1]]; //trim the first char
            NSUInteger paperBillInt = [paperBillTrimmed integerValue]; // get int from paper money values
            
            if(coinCount == paperBillInt){
                [results addObject:scroogesPaperBills[a]];
            }
        }
    }
    return results;
}

@end
