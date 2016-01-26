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
    
    NSString *stringOfDwarves = @"";
    
    for(NSUInteger i = 0; i < [dwarfs count]; i++){
        NSUInteger dwarfNumber = i + 1;
        if(i < [dwarfs count] - 1){
            
            stringOfDwarves = [stringOfDwarves stringByAppendingFormat:@"%lu. %@ | ",dwarfNumber ,dwarfs[i]];
    
        }
        else{
            
            stringOfDwarves = [stringOfDwarves stringByAppendingFormat:@"%lu. %@", dwarfNumber, dwarfs[i]];
        }
    }
    
    return stringOfDwarves;
    
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    
    NSMutableArray *uppercasePowers = [NSMutableArray arrayWithArray:powers];
    
    for(NSUInteger i = 0; i < [powers count]; i++){
        
        uppercasePowers[i] = [[uppercasePowers[i] uppercaseString] stringByAppendingString:@"!"];
        
    }

    return uppercasePowers;

}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    
    NSString *summonPhrase = @"Let our powers combine:";
    
    NSArray *powerShout = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for(NSUInteger i = 0; i < [powerShout count]; i++){
        summonPhrase = [summonPhrase stringByAppendingFormat:@"\n%@",powerShout[i]];
    }
    
    summonPhrase = [summonPhrase stringByAppendingString:@"\nGo Planet!"];
    
    return summonPhrase;
    
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames{
    
    NSString *chosenCheese = @"No premium cheeses in stock.";
    
    for(NSUInteger i = 0; i < [premiumCheeseNames count]; i++){
        
        for(NSUInteger j = 0; j < [cheesesInStock count]; j++){
            
            if(premiumCheeseNames[i] == cheesesInStock[j]){
                
                chosenCheese = premiumCheeseNames[i];
                
                break;
            }
        }
    }
    
    return chosenCheese;
    
}

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    
    NSMutableArray *paperMoney = [moneyBags mutableCopy];
    
    for(NSUInteger i = 0; i < [moneyBags count]; i++){
        NSUInteger strLength = [moneyBags[i] length];
        NSNumber *paperValue = @(strLength);
        
        //there has to be a better way to do this. Either empty the string and do this at the same time with
        //stringByAppendingFormat or find a way to ReplaceObjectAtIndex with the "$" sign
        
        paperMoney[i] = @"$";
        paperMoney[i] = [paperMoney[i] stringByAppendingFormat:@"%@", paperValue];

    }
    
    return paperMoney;
    
}

@end
