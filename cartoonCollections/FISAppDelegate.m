//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs { // In the end will return an NSString. the NSString "stringByRollCallingDwarfsInArray" is passed NSArray called "dwarfs".
    
    // create a string listing the dwarfs by iterating over the <dwarfs> array
    
    NSMutableString *stringOfDwarfs = [[NSMutableString alloc]init]; //Creates an empty NSMutableString "StringOfDwarfs" (like a word with no letters in it)
    
    NSMutableArray *dwarfsArray = [dwarfs mutableCopy]; // making a mutable copy of the NSArray "dwarfs" called "dwarfsArray" (which is an NSMutableArray)
    
    NSInteger dwarfCount = [dwarfsArray count]; // count is a method that returns the amount of items in an array. dwarfCount is set equal to the count of dwarfs in dwarfsArray.
    
    for (NSUInteger i = 0; i < dwarfCount; i++) { // NSUInteger "i" is set equal to 0; If "i" is less than "dwarfCount" stop; increment 'i" by 1 (i++)
        
        // generate dwarf number
        
        NSNumber *dwarfNumber = @(i+1);// 1 is added to "i" because we're counting from 0 and that's where the array begins (the "@" changes the NSUInteger "i" to an NSNumber called "dwarfNumber"
        
        NSString *dwarfNumberString = [dwarfNumber stringValue]; // "dwarfNumber" is typecasted as a string value "stringValue" (turned into a string) and then dwarfNumber is set equal to the NString "dwarfNumberString"
        
        NSString *dwarfName = dwarfsArray[i]; // the NSString "dwarfName" is set equal to i-th element of "dwarfsArray". The i-th element is a constant value (fixed value) in the funcation as you use it, but changes in the next iternation of the loop.
        
        if (i < dwarfCount - 1) { // As long as "i" is less than or equal to the size of "dwarfCount", which is technically at this point still an NSInteger, then append the following strings:
            
            [stringOfDwarfs appendFormat:@"%@", dwarfNumberString]; // @"%@" replaces itself with the value of dwarfNumberString
            [stringOfDwarfs appendFormat:@"%s", ". "]; // @"%s" replaces itself with ". "
            [stringOfDwarfs appendFormat:@"%@", dwarfName]; // @"%@" replaces itself with the value of dwarfName
            [stringOfDwarfs appendFormat:@"%s", " | "]; // @"%s" replaces itself with ". "
            
        } else { // hypothesis is these are left over values at the end of the if statement.
            
            [stringOfDwarfs appendFormat:@"%@", dwarfNumberString]; // @"%@" replaces itself with the value of the dwarfNumberString
            [stringOfDwarfs appendFormat:@"%s", ". "]; // @"%s" replaces itself with ". "
            [stringOfDwarfs appendFormat:@"%@", dwarfName]; // @"%s" replaces itself with the value of dwarfName
            
        }
        
    }
    
    return stringOfDwarfs; // returns the NSString "stringOfDwarfs"
}

// Planteer Method

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers { // will return an NSArray with the parameter powers. powers is passed through the method.
    
    NSMutableArray *planeteersShout = [[NSMutableArray alloc]init]; // builds an NSMutableArray called planteersShout and readies it for use
    
    NSUInteger planeteerCount = [powers count]; // Calling the method "count" on "powers". "count" will count the number of elements in an array. The NSUInteger "planeteerCount" is set equal to the number of elements in the array powers.
    
    NSString *planeteerSpeak = @""; // the NSString "planeteerSpeak is equal to an empty NSString
    
// for loops have 3 parts. first part is initliazation (the space where you can set as many variables as you want equal to anything and they be deleted at the end of the loop, once the loop is finished) The second part is the bound or limit
    
// [] = the method the call
    
    for (NSUInteger i = 0; i < planeteerCount; i++) { // "for loop" NSUInteger "i" is sey equal to 0; is "i" is less than "planeteerCount"; then increment "i" by 1 until reaching "planeteerCount"
        
        planeteerSpeak = powers[i]; // The empty NSString "planeteerSpeak" is set equal i'th element of "powers" (some number)
        
        planeteerSpeak = [planeteerSpeak uppercaseString]; // the NSString "planeteerSpeak" is now equal to itself after the "uppercaseString" method is passed to capitalize every letter in the string.
        
        planeteerSpeak = [planeteerSpeak stringByAppendingString:@"!"]; // "planeteerSpeak" is set equal to itself after the "stringByAppendingString" method is passed to add a "!" to the end of the now entirely capiltaized string.
        
        [planeteersShout addObject:planeteerSpeak]; // The value within the NSString "planeteersSpeak" is added to the empty NSMutableArray "planeteersShout"
    }
    
    return planeteersShout; // returns an array (an NSMutableArray) that contains all of the "POWERS!"
    // like described above "-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {"
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers { // This method declares an NSString to return. Here it is called "summonCaptainPlanetWithPowers which is passed the parameter "powers"
    
    NSString *salutation = @"Let our powers combine:\n"; // Sets "salutation" equal to the string "Let our powers combine:" "\n" enters a new line - like pressing enter.
    NSString *goPlanet = @"Go Planet!"; // goPlanet is set equal to the string "Go Planet!"
    NSMutableString *zeroPollution = [salutation mutableCopy]; // The NSMutableString "finishedString" is set equal to a copy of the NSString "salutation" (Typecasting an NSString to a NSMutabaleString)
    NSArray *powerShoutArray = @[]; // powersShoutArray is set equal to an empty NSArray "@[];"
    NSString *powerShout = @""; // "powerShout" is set equal to an empty an NSString
    
    NSInteger powerCount = [powers count]; // Calling the method "count" on "powers". "count" will count the number of elements in an array. The NSInteger "powerCount" is set equal to the number of elements in the array powers.
    
    for (NSUInteger i = 0; i < powerCount; i++) { // for loop - The NSUInteger "i" is set equal to 0; if "powerCount" is greater than "i"; then increment "i" by 1 but not until the end of the for loop below (after the if else statement)
        
        powerShoutArray = [self arrayOfPlaneteerShoutsFromArray:powers]; // Specfically calls "arrayOfPlaneteerShoutsFromArray", the first method as it were declared above, from within itself. And sets powerShoutArray equal to "arrayOfPlaneteerShoutsFromArray". "powers" is the paramter that the method, "arrayOfPlaneteerShoutsFromArray", is passed through
        
        powerShout = powerShoutArray[i]; // Sets "powerShout equal to i'th element of "powerShoutArray"
        
        if (i < powerCount - 1) { // if "i" is less than "powerCount - 1" than...
            [zeroPollution appendFormat:@"%@\n", powerShout]; // @"%@\n" replaces itself with the value inside "powerShout" then adds that value to the NSMutableString "zeroPollution" then enters a new line
        } else {
            [zeroPollution appendFormat:@"%@\n%@", powerShout, goPlanet]; // @"%@" replaces itself with "powerShout", then enters a new line with "\n", then replaces the second "%@" with "goPlanet"
        }
    }
    return zeroPollution; // returns the value stored in the NSMutableString "zeroPollution"
    // "Let our powers combine:\nEARTH!\nFIRE!\nWIND!\nWATER!\nHEART!\nGo Planet!";
}

// Fancy Cheese

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *) premiumCheeses { // Will return an NSString. Checks to see if any elements in the array "premiumCheeseNames" are the same as the array  "cheesesInStock"
    
    for (NSString *cheeseMatch in premiumCheeses) { // for loop with strings - The NSString "cheeseMatch" is going to be equal to the cheeses in "premiumCheeses"
        
        if ([cheesesInStock containsObject:cheeseMatch]) { // If "cheesesInStock" contains "cheeseMatch"
            return cheeseMatch; // then reutrn "cheeseMatch"/the name of the cheese
        }
    }
        return @"No premium cheeses in stock."; // This will only return if there were no cheese matches
}

// Scrooge

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags { // The method "arrayByConvertingMoneyBagsIntoPaperBills" will return an NSArray. "moneyBags" is the parameter passed through the method "arrayByConvertingMoneyBagsIntoPaperBills"
    
    NSMutableArray *paperBills = [[NSMutableArray alloc] init]; // Creates a blank NSMutableArray, "paperBills", and sets it up for use
    
    NSInteger moneyBagsCount = [moneyBags count]; // The NSInteger "moneyBagsCount" is equal to the count elements in the NSArray "moneyBags"
    
    for (NSUInteger i = 0; i < moneyBagsCount; i++) { // NSUInteger "i" is equal to 0; if "i" is less than "moneyBagsCount; then increment "i" by 1
        
        NSInteger dollarLength = [moneyBags[i] length]; // Sets "dollarLength" equal to the number of $ in the string in the i'th positon of the NSArray "moneyBags"
        
        
        NSString *dollarValue = [NSString stringWithFormat:@"%ld", dollarLength]; // Typecasting NSInteger "dollarLength" into an the NSString "dollarValue"
        
        NSString *mcDuck = [@"$" stringByAppendingString:dollarValue]; // Sets "mcDuck" equal to "$" and the amount of money
        
    
        [paperBills addObject:mcDuck]; // adds the value of the NSString "mcDuck" to the NSMutableArray "paperBills"
        
    }
    
    return paperBills; // returns the amount of paper bills
}

@end