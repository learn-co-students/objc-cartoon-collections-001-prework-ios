//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}
/*Task
 *DO not hard code, but make an interpolated string using the dwarfs name array. We will use length to get the lengths of the dwarf name input and then in an NSLog, we can increment by number of dwarfs.
 */
-(NSString *)stringByRollCallingDwarfsInArray : (NSArray*) dwarfs {
    NSUInteger nameList = [dwarfs count];
    NSString *rollCall = @"";
    for (NSUInteger i=1; i<=nameList+1; i++) {
        
        NSLog (@"%lu. %@ | ", i, dwarfs[i-1]);
        
        rollCall = [NSString stringWithFormat:@"%lu, %@ | ", i, dwarfs[i-1]];
        //return rollCall;
        
    }
    
    return rollCall;
}

/*Task
 * implementation of arrayOfPlaneteerShoutsFromArray: to take each of the five Planeteer's powers in the argument array and convert them into uppercase while adding an ! ("exclamation point") to the end.
 */
-(NSArray *)arrayOfPlaneteerShoutsFromArray : (NSArray *) powers {
    NSArray *shoutsToBeShouted;
    for (NSUInteger i = 0; i<=[powers count]; i++) {
        shoutsToBeShouted = @[@"%@! ", [powers[i] uppercaseString]];
        
        NSLog(@"on loop %lu, the power is %@! ", i, [powers[i] uppercaseString]);
    }
    return shoutsToBeShouted;
}
/*Task
 *Now that the Planeteers have practiced their shouts, they need to combine their powers to take pollution down to zero! Write the implementation for summonCaptainPlanetWithPowers: to take the five Planeteers' powers and combine them into the Planeteer phrase that summons Captain Planet!
 * The phrase begins with "Let our powers combine:",
 * Then each Planeteer shouts their power in sequence,
 * Then the phrase ends with "Go Planet!".
 * Each piece of the phrase should be separated by a new line (`\n`), and don't forget to capitalize "Planet!" as proper noun.
 *You could try calling the method you just wrote inside this method implementation by calling [self arrayOfPlaneteerShoutsFromArray:powers] and capturing its return. Sending a method call to self, in this case, tells our FISAppDelegate object to call a method on itself.
 */

-(NSString *)summonCaptainPlanetWithPowers : (NSArray *) powers {
    NSArray *arrayOfPowersToTurnIntoString = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSString *prePowersInsert = @"Let our powers combine:";
    NSString *postPowersInsert = @"Go Planet!";
    NSString *powersStrungTogether = @"";
    
    for (NSInteger i = 0; i <= [arrayOfPowersToTurnIntoString count] ; i++) {
        
        NSString *powersStrungTogether = [NSString stringWithFormat:@"%@\n", arrayOfPowersToTurnIntoString[i]];
        return powersStrungTogether;
    }
    NSString *captainSummoningPowersPart = [prePowersInsert stringByAppendingString: powersStrungTogether];
    NSString *finalSummoningCaptain  = [captainSummoningPowersPart stringByAppendingString: postPowersInsert];
    
    return finalSummoningCaptain;
}

/*Task
 *compare the two argument arrays and return the first cheese in premiumCheeseNames that is also in the cheesesInStock array. If there are no cheeses common to both arrays, then the method should return @"No premium cheeses in stock." so Jerry knows to look somewhere else.
 firstPremiumCheeseInStock:cheesesInStock
 
 firstPremiumCheeseInStock:cheesesInStock
 premiumCheeseNames:premiumCheeses
 */
-(NSString *)firstPremiumCheeseInStock: (NSArray *) cheesesInStock premiumCheeseNames: (NSArray *) premiumCheeses{
    
    NSString *caseForNoCheesesInCommon = @"No premium cheeses in stock.";
    
    
    for (NSUInteger i = 0; i <= [premiumCheeses count]; i++) {
        for (NSUInteger j = 0; j<= [cheesesInStock count]; j++) {
            if ([premiumCheeses[i] isEqualToString: cheesesInStock[j]]) {
                return premiumCheeses[i];
            }
        }
    }
    return caseForNoCheesesInCommon;
}


/*Task
 * Write the implementation for arrayByConvertingMoneyBagsIntoPaperBills: to count the dollar coins (one coin is represented by one $) in each string
 */
-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *) moneyBags {
    NSArray *paperBillAmount = @[];
    for (NSUInteger i = 0; i<=[moneyBags count]; i++) {
        NSInteger amountOfMoney = [moneyBags[i] length];
        NSNumber *numberAmountOfMoney = @(amountOfMoney);
        paperBillAmount = @[@"%@",numberAmountOfMoney];
    }
    
    
    return paperBillAmount;
}

@end
