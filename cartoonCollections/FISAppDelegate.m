//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs; {
    
    // - is instance method, return type, argument type...working on my programmer lingo
    // pointer to Object
    // take the array of dwarf names and create a string that gives each dwarf a list number (1 to 7) and separates each number and name with a |.
    
    NSMutableString *name = [@"" mutableCopy];
    
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        
        if (i < [dwarfs count] - 1) {
            
            [name appendFormat:@"%lu. %@ | ", i + 1, dwarfs[i]];
            
        } else {
            
            [name appendFormat:@"%lu. %@", i + 1, dwarfs[i]];
            // The final dwarf was appending a pipe "|" which was causing the test to fail, I impleted these if / else statements for that reason.
            
        }
    }
    
    return name;
    
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers; {
    
    NSMutableArray *mPowers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [powers count]; i++) {
        
        NSString *power = [powers[i] stringByAppendingFormat:@"!"];
        // I had to append the exclamation point "!" first prior to uppercaseString'ing it. I was previously doing it the other way around & it wasn't working very well.
        
        NSString *uppercasePower = [power uppercaseString];
        
        [uppercasePower stringByAppendingFormat:@"%@!", powers[i]];
        [mPowers addObject:uppercasePower];
        
    }
    
    NSLog(@"\n\n\n\n\n%@\n\n\n\n", mPowers);
    return mPowers;
    
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers; {
    
    //The phrase begins with "Let our powers combine:", then each Planeteer shouts their power in sequence, then the phrase ends with "Go Planet!" Each piece of the phrase should be separated by a new line.
    
    NSMutableArray *summon = [[self arrayOfPlaneteerShoutsFromArray:powers] mutableCopy];
    // Called the previous method in this one so the powers come out uppercase with "!" appended to each power.
    
    NSMutableString *finalSummon = [[[NSMutableString alloc] initWithString:@"Let our powers combine:"] mutableCopy];
    // initWithString: / stringWithFormat: methods are relatively new concepts to me.  However, they're proving to be extremly useful in reducing the lines of code I have to write. This allowed me to add "Let our powers combine:" in front of my otherwise empty mutable string.
    
    for (NSString *power in summon) {
        
        [finalSummon appendFormat:@"\n%@", power];
        // Utilized a for-in loop to iterate over each power appending "Let our powers combine:" right before the Planeteers shout their powers...
        
    }
    
    [finalSummon appendFormat:@"\nGo Planet!"];
    NSLog(@"\n\n\n\n\n%@\n\n\n\n\n\n", finalSummon);
    // Appends "Go Planet!" after each Planeteer has shouted their power. Also a NSLog for good measure!
    
    return finalSummon;
    
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames; {
    
    // Compare the two argument arrays and return the first cheese in premiumCheeseNames that is also in cheesesInStock. If there are no matches then return @"No premium cheeses in stock".
    
    NSMutableString *premium = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < [premiumCheeseNames count]; i ++) {
        
        if ([cheesesInStock containsObject:premiumCheeseNames[i]]) {
            
            [premium appendString:premiumCheeseNames[i]];
            
            return premium;
            
        }
    }
    
    return @"No premium cheeses in stock.";
    // Comparing the two argument arrays ([cheesesInStock containsObject:premiumCheeseNames[i]) was relatively simple for me to figure out. I was focusing on trying to chain a else-if statement instead of working with multiple return statements which I decided to do in the end.
    
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags; {
    
    // He's brought several bags (strings) to be converted into paper money. Count the dollar coins (one coin is represented by one '$')
    
    NSLog(@"\n\n\n\n\n\n\n%@\n\n\n\n\n", moneyBags);
    
    NSMutableArray *dollarsByBag = [[NSMutableArray alloc] init];
    // At first I was trying to find out how to utilize the componentsSeparatedByString: method to count each one of the "$"'s however I found out that wasn't the best way to go about it.
    
    for (NSString *dollars in moneyBags) {
        
        NSString *dollarAmount = [NSString stringWithFormat:@"$%lu",[dollars length]];
        // Utilized a for-in loop to iterate over each string in moneyBags array and created a new NSString & the stringWithFormat: method along with the %lu format specifer to find out how many dollars were in each string based on the dollars length.
        
        [dollarsByBag addObject:dollarAmount];
    }
    
    return dollarsByBag;
    
}

@end
