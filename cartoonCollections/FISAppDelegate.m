//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

// To improve workplace safety, Doc has suggested that the seven dwarfs roll call themselves when entering or leaving the mine. Write the implementation for stringByRollCallingDwarfsInArray: to take the array of dwarf names and create a string that gives each dwarf a list number (1. to 7.), and separates each number & name with a | ("pipe"). Look at the test file to see exactly what you need to generate, but don't hard code the answer! Create the expected string programmatically by appending each dwarf's name in an interpolated string.

//Hint: When a test's "expected:" value and its "got:" value don't fit on the red highlighted line the shows up in the Code Editor when the test fails, remember that you can view the values in their entireties via the Reports navigator.



-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSMutableString *rollCall = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        [rollCall appendFormat:@"%lu. %@", i + 1, dwarfs[i]];
        
        if (i != [dwarfs count] - 1) {
            [rollCall appendString:@" | "];
        }
        
    }
    
    return rollCall;
    
}

//Let's help the Planeteers get the gusto they need to summon Captain Planet! Write the implementation of arrayOfPlaneteerShoutsFromArray: to take each of the five Planeteer's powers in the argument array and convert them into uppercase while adding an ! ("exclamation point") to the end. Return the array of altered strings. Again, don't hard code the answer. Solve this problem programmatically with loops and string interpolation!



-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *powersCopied = [powers mutableCopy];
    
    for (NSUInteger i = 0; i < [powersCopied count]; i++) {
        NSMutableString *power = powersCopied[i];
        powersCopied[i] = [[power uppercaseString] stringByAppendingFormat:@"!"];
    }
    
    return powersCopied;
    
}


//Now that the Planeteers have practiced their shouts, they need to combine their powers to take pollution down to zero! Write the implementation for summonCaptainPlanetWithPowers: to take the five Planeteers' powers and combine them into the Planeteer phrase that summons Captain Planet!
/*
 * The phrase begins with "Let our powers combine:",
 * Then each Planeteer shouts their power in sequence,
 * Then the phrase ends with "Go Planet!".
 * Each piece of the phrase should be separated by a new line (`\n`), and don't forget to capitalize "Planet!" as proper noun.
 Hint: You could try calling the method you just wrote inside this method implementation by calling [self arrayOfPlaneteerShoutsFromArray:powers] and capturing its return. Sending a method call to self, in this case, tells our FISAppDelegate object to call a method on itself.
 */

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSMutableString *summoning = [[NSMutableString alloc] init];
    
    // Append first line
    [summoning appendString:@"Let our powers combine:\n"];
    
    // Shouts
    NSArray *shouts = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSString *shout in shouts) {
        [summoning appendFormat:@"%@\n", shout];
    }
    
    // Append last line
    [summoning appendString:@"Go Planet!"];
    
    return summoning;
}

// Jerry Mouse has expensive taste in cheese and he only eats the best. Write the implementation for firstPremiumCheeseInStock:premiumCheeseNames: to compare the two argument arrays and return the first cheese in premiumCheeseNames that is also in the cheesesInStock array. If there are no cheeses common to both arrays, then the method should return @"No premium cheeses in stock." so Jerry knows to look somewhere else.

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    NSMutableString *premiumCheeseInStock = [[NSMutableString alloc] init];
    
    for (NSString *premiumCheese in premiumCheeseNames) {
        for (NSString *cheeseInStock in cheesesInStock) {
            if ([premiumCheese isEqualToString:cheeseInStock]) {
                [premiumCheeseInStock appendString:premiumCheese];
                return premiumCheeseInStock;
            }
        }
    }
    
    [premiumCheeseInStock appendString:@"No premium cheeses in stock."];
    
    return premiumCheeseInStock;
    
}


// Scrooge McDuck is a real financial conservative and still keeps his money in dollar coins! However, he's decided to try out this new thing called "paper bills" (he hears they're the next big thing); he's brought several bags (strings) of coins to you, a bank teller, to convert into paper money. Write the implementation for arrayByConvertingMoneyBagsIntoPaperBills: to count the dollar coins (one coin is represented by one $) in each string in Scrooge's array into an equivalent paper bill (a string in the manner of @"$20"). Look at the tests to clarify the scenario, but avoid hard coding the answer!

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *paperBills = [moneyBags mutableCopy];
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSString *money = paperBills[i];
        NSString *bill = [NSString stringWithFormat:@"$%@", money];
        paperBills[i] = bill;
    }
    
    return paperBills;
    
}







@end
