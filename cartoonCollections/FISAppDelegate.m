//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
   NSString *dwarf = @"";
//Tests states must return a String, created this empty string to be returned.
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
//Utilizing a "For" loop to add the number & | to the dwarf names.
        
        NSUInteger dwarfNum = i + 1;
        NSString *dwarfName = dwarfs[i];
        NSString *formatDwarf = [NSString stringWithFormat:@"%lu. %@", dwarfNum, dwarfName];
//NSString *formatDwarf is adding the number using %lu format specifier and name using %@ format specifier.
        
        NSString *pipe = [NSString stringWithFormat:@" | "];
        dwarf = [dwarf stringByAppendingString:formatDwarf];
//NSString *pipe and the following stringByAppendingString adds the | in between the number and name.
        
        if (dwarfs[i] == [dwarfs lastObject]) {
            break;
        } else {
            dwarf = [dwarf stringByAppendingString:pipe];
        }
    }
    return dwarf;
//As mentioned earlier, one of the tests requires to return a string.
//This loop will meet the safety precautions to require the dwarfs to roll call their name whenever entering or exiting the mine.
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *power = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *bigMove = powers[i];
//The string bigMove encompasses the Array powers & will allow us to uppercase as well as add !
        
        bigMove = [bigMove uppercaseString];
        bigMove = [bigMove stringByAppendingFormat:@"!"];
        [power addObject:bigMove];
//Adding the planeteers power (under the moniker bigMove) to the empty muteable array power.
    }
    return power;
//This loop will go through all of the Planeteers powers (being represented by the String bigMove as well as the index being set to [powers count]) ensuring the element is capitalized and has a "!" attached.
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    
    NSString *beginCatchPhrase = @"Let our powers combine:";
//This method continues the work of arrayOfPlaneteerShoutsFromArray as it just adds a catch phrase around the elements, this is the start of the catch phrase.
    
    NSUInteger index = 0;
    
    for (NSString *bigMove in [self arrayOfPlaneteerShoutsFromArray:powers]) {
//This loop was essentially suggested in the lab, hopefully will learn more about these types of loops.
        
        NSString *insideCatchPhrase = @"\n";
// "\n" ensures that each Planeteer says their element in a new line.
        
        insideCatchPhrase = [insideCatchPhrase stringByAppendingString:bigMove];
//The previously created NSString bigMove is used here to list each element on a new line by utilizing insideCatchPhrase and stringByAppendingString: method.
        
        beginCatchPhrase = [beginCatchPhrase stringByAppendingString:insideCatchPhrase];
        index++;
//This will add "Let our powers combine" to the beginning of the catch phrase
    }
    beginCatchPhrase = [beginCatchPhrase stringByAppendingFormat:@"\nGo Planet!"];
    return beginCatchPhrase;
//This adds "Go Planet" to the end and is also utilizing "\n" to ensure each element lives on a new line.
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    NSString *firstCheese = @"";
//Tests require for the return of a string, this empty string was created for that purpose.
    
    NSUInteger index = 0;
//Defining the index outside of the loop
    
    for (NSString *cheese in cheesesInStock) {
        if ([premiumCheeseNames containsObject:cheese]) {
            firstCheese = [firstCheese stringByAppendingString:cheese];
            break;
//Comparing two argument arrays (premiumCheeseNames vs cheesesInStock) and returning the first cheese in premiumCheeseNames that is also in the cheesesInStock array.
            
        }
        index++;
    }
    if ([firstCheese length] < 1) {
        firstCheese = @"No premium cheeses in stock.";
//If there are no cheeses in common with both arrays, the method will return "No premium cheeses in stock." Sorry Jerry!
        
    }
    return firstCheese;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *mute = [[NSMutableArray alloc] init];
    
    for (NSString *bag in moneyBags) {
//Creating a "for" loop for "bag" which is one of the bags of dollar coins represented in the moneyBags array.
        
        NSUInteger dollarCount = [[bag componentsSeparatedByString:@"$"] count] -1;
//Converting to the dollar amount of each bag of coins, separating each bag with a "$". Added -1 because without it the test results had +$1 for each bag of coins.
        
        NSString *stringDollarCount = [NSString stringWithFormat:@"%lu", dollarCount];
//This adds the actual dollar amount to each bag of coins.
        
        NSString *dollaBills = @"$";
        dollaBills = [dollaBills stringByAppendingString:stringDollarCount];
        [mute addObject:dollaBills];
//Adding dollar sign ($) in front of the value of each money bag.
         
    }
    return mute;
    }


@end
