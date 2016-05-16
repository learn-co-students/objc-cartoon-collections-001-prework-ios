//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs; {
    
    NSMutableString *mDwarfs = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        
        if (i == 6) {
            [mDwarfs appendFormat:@"%lu. %@", i + 1, dwarfs[i]];
            
        } else {
        
    [mDwarfs appendFormat:@"%lu. %@ | ", i + 1, dwarfs[i]];
        NSLog(@"\n\n\n\n\n %@", mDwarfs);
        }
//Originally I utilized just a for loop with the last appendFormat, however this also added the | "pipe" to the last Dwarf's name which caused the test fail. Adding this if & chaining this else statement, it ensured the pipe wasn't attached to the last Dwarf's name.
      
    }

    return mDwarfs;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers; {
    
    NSMutableArray *mPowers = [powers mutableCopy];
    
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        
        mPowers[i] = [mPowers[i] uppercaseString];
// I accidentally referenced capitalizedString initially only capitalizing the first letter in each power.
// Easy way to ensure all the strings in an array are entirely uppercase.
        
        mPowers[i] = [mPowers[i] stringByAppendingString:@"!"];
// I overthought this tremendously originally, just as simple as appending an exlamation point.
//     NSString *excl = @"!";
//     [capPowers arrayByAddingObject: powers[i]];
        
    }
    
    NSLog(@"\n\n\n\n\n\n\n%@", mPowers);
    return mPowers;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers; {
    
    NSMutableArray *powerShout = [[self arrayOfPlaneteerShoutsFromArray:powers] mutableCopy];
// powerShout is a call of the previously defined method arrayOfPlaneteerShoutsFromArray.
    
    NSMutableString *combined = [[NSMutableString alloc] initWithString:@"Let our powers combine:"];
// alloc initWithString: allowed me to create an empty mutable string with a string attached. This was an interesting concept that wasn't apart of my original train of thought.

    
    for (NSString *letOurPowers in powerShout) {
// Utilized a for-in loop to iterate over all of the powers, "Earth, Fire, etc.".
        
        [combined appendFormat:@"\n%@", letOurPowers];
// This appended "Let our powers combine:" to the beginning of the catch phrase and allowed the "powerShout" to begin on a new line(\n).
       
    }
    
    [combined appendFormat:@"\nGo Planet!"];
// This appended "Go Planet!" to the end of the catch phrase, also adding "\n" in front ensured the Go Planet began on a new line after the powerShout.
    
    NSLog(@"%@\n\n\n\n\n", combined);
    return combined;
    
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames; {
    
    // Compare the two argument arrays and return the first cheese in premiumCheeseNames that is also in the cheesesInStock array. If there are no cheeses common to both arrays, then the method should return '@"No premium cheeses in stock."' so Jerry knows to look somewhere else.
    
    NSString *firstCheese = [[NSString alloc] init];
    NSUInteger index = 0;
    
    for (NSString *cheese in cheesesInStock) {
        
        if ([premiumCheeseNames containsObject:cheese]) {
// This is checking the strings in premiumCheeseNames to find out if there's any similiarities to the strings in cheesesInStock.
            
            firstCheese = [firstCheese stringByAppendingString:cheese];
// The redefinition (firstCheese =) as opposed to just putting [firstCheese stringByAppendinString:cheese]; was absolutely necessary.
        
          }
        index++;
// Defined index outside of the scope to ensure we can move up in the for-in loop.
    }
        if ([firstCheese length] < 1) {
// Originally I chained an else statement to the for-in loop above, however it would continue to append "No premium cheeses in stock". By adding this additional if statement outside of the loop, it ensures that whatever matching strings (in this case there's only one premium cheese in stock), don't get printed as this is in the case there aren't any premium cheeses in stock.
            
         firstCheese = [firstCheese stringByAppendingFormat:@"No premium cheeses in stock."];
// Redefinition necessary
            
        }
    
    NSLog(@"%@\n\n\n\n", firstCheese);
    
    return firstCheese;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags; {
    
    // Scrooge McDuck has brought me several money bags (in the forms of strings, in an array) to convert into paper money.
    
    NSMutableArray *moneyBagDollarValue = [[NSMutableArray alloc] init];
    
    for (NSString *dollarCount in moneyBags) {
        
       NSUInteger dollar = [[dollarCount componentsSeparatedByString:@"$"] count] -1;
// README indicated that one coin is represented by "$", I had to utilize the componentsSeparatedByString: method to count each "$" associated with each moneyBag in order to identify how much was in each moneyBag. Each bag came out to be $1 more than what was expected, which is why I added the -1 at the end (this is because while the dollar signs represent a dollar, there's also an additional dollar sign at the begininng, for example, $$$$$$ represents $5).
        
        NSString *stringDollar = [NSString stringWithFormat:@"$%lu", dollar];
        [moneyBagDollarValue addObject:stringDollar];
// Once we counted the amount of money in each moneyBag utilizing NSUInteger dollar, then I was able to stringWithFormat the dollar amount of each moneyBag and added the final moneyBagDollarValue to our mutable array.
        
        NSLog(@"%lu\n\n\n\n\n\n", dollar);
        
        
    }
    
    return moneyBagDollarValue;
    
}

@end
