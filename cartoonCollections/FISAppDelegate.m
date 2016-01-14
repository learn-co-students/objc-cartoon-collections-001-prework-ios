//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


-(NSString*)stringByRollCallingDwarfsInArray:(NSArray*)dwarfs; {
   NSString *list=@"";
    for(NSUInteger i=0;i<dwarfs.count;i++){
        if(i==0) {
            list= [list stringByAppendingFormat:@"%lu. %@",i+1, dwarfs[i]];
        }
        else
            list= [list stringByAppendingFormat:@" | %lu. %@", i+1, dwarfs[i]];
    }
    return list;
}

-(NSArray*)arrayOfPlaneteerShoutsFromArray:(NSArray*)powers; {
     NSMutableArray *planeteerPower=[[NSMutableArray alloc]init];
    for(NSUInteger i=0;i<powers.count;i++) {
        NSString *originalPower= powers[i];
        NSString *upperCasePower= [originalPower uppercaseString];
        NSString *finalPower= [upperCasePower stringByAppendingFormat:@"!"];
        [planeteerPower addObject:finalPower];
    }
    return planeteerPower;
}

-(NSString*)summonCaptainPlanetWithPowers:(NSArray*)powers; {
    NSString *firstPart= @"Let our powers combine:\n";
    NSString *secondPart=@"Go Planet!";
    NSArray *planeteerPowers= [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for(NSUInteger i=0;i<planeteerPowers.count;i++){
        firstPart = [firstPart stringByAppendingFormat:@"%@\n", planeteerPowers[i]];
    }
    firstPart=[firstPart stringByAppendingFormat:@"%@", secondPart];
    return firstPart;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames; {
    for (int i = 0; i < [cheesesInStock count]; i++) {
       NSString *cheeseMatch = cheesesInStock[i];
        if ([premiumCheeseNames containsObject:cheeseMatch]) {
            return cheeseMatch;
        }
    }
    return @"No premium cheeses in stock.";
}
    
    
    
-(NSArray*)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray*)moneyBags; {
    NSMutableArray *paper=[[NSMutableArray alloc]init];
    NSString *value=@"";
    for(NSUInteger i=0;i<moneyBags.count;i++) {
        value=[value stringByAppendingFormat:@"$%lu", [moneyBags[i] length]];
        [paper addObject:value];
    }
    return paper;
}

/**
 
 *  Define your method implementations here.
 
 */

@end
