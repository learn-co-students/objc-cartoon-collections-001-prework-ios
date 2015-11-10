//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

// define methods

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    // create a string listing the dwarfs by iterating over the <dwarfs> array
    
    NSMutableString *stringOfDwarfs = [[NSMutableString alloc]init];
    
    NSMutableArray *dwarfsArray = [dwarfs mutableCopy];
    
    NSInteger dwarfCount = [dwarfsArray count];
    
    NSInteger dwarfNum = 0;
    
    for (NSUInteger i = 0; i < dwarfCount; i++) {
        
        // generate dwarf number
        
        dwarfNum = i + 1;
        NSNumber *dwarfNumber = @(dwarfNum);
        NSString *dwarfNumberString = [dwarfNumber stringValue];
        
        // generate period, dwarf name, and pipe
        
        NSString *periodSpace = @". ";
        
        NSString *dwarfName = dwarfsArray[i];
        
        NSString *spacePipeSpace = @" | ";
        
        if (i < dwarfCount - 1) {
            
            [stringOfDwarfs appendFormat:@"%@", dwarfNumberString];
            [stringOfDwarfs appendFormat:@"%@", periodSpace];
            [stringOfDwarfs appendFormat:@"%@", dwarfName];
            [stringOfDwarfs appendFormat:@"%@", spacePipeSpace];
            
        } else {
            
            [stringOfDwarfs appendFormat:@"%@", dwarfNumberString];
            [stringOfDwarfs appendFormat:@"%@", periodSpace];
            [stringOfDwarfs appendFormat:@"%@", dwarfName];
            
        }
        
    }

    
    return stringOfDwarfs;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *planeteersShout = [[NSMutableArray alloc]init];
    
    NSUInteger planeteerCount = [powers count];
    
    NSString *planeteerSpeak = @"";
    
    NSString *planeteersShoutString = @"";
    
    NSString *planeteersUppercaseExclamation = @"";
    
    for (NSUInteger i = 0; i < planeteerCount; i++) {
        
        planeteerSpeak = powers[i];
        
        planeteersShoutString = [planeteerSpeak uppercaseString];
        
        planeteersUppercaseExclamation = [planeteersShoutString stringByAppendingString:@"!"];
        
        [planeteersShout addObject:planeteersUppercaseExclamation];
        
    }
    
    
    return planeteersShout;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    // initialize <finishedString>
    
    NSString *salutation = @"Let our powers combine:\n";
    NSString *goPlanet = @"Go Planet!";
    NSMutableString *finishedString = [salutation mutableCopy];
    NSArray *powerShoutArray = @[];
    NSString *powerShout = @"";
    
    NSInteger arrayCount = [powers count];
    
    for (NSUInteger i = 0; i < arrayCount; i++) {
        powerShoutArray = [self arrayOfPlaneteerShoutsFromArray:powers];
        powerShout = powerShoutArray[i];
        
        if (i < arrayCount - 1) {
            [finishedString appendFormat:@"%@", powerShout];
            [finishedString appendString:@"\n"];
        } else {
            [finishedString appendFormat:@"%@", powerShout];
            [finishedString appendString:@"\n"];
            [finishedString appendFormat:@"%@", goPlanet];
        }
        
    }
    
    return finishedString;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *) premiumCheeses {
    
    // NSString *cheeseMatch = @"No premium cheeses in stock.";
    
    NSString *cheeseMatch = @"";
    
    BOOL doCheesesMatch = YES;
    
    for (NSString *cheeseMatch in premiumCheeses) {
        
        if ([cheesesInStock containsObject:cheeseMatch]) {
            return cheeseMatch;
        } else {
            doCheesesMatch = NO;
        }
    }
    
    if (!doCheesesMatch) {
        cheeseMatch = @"No premium cheeses in stock.";
        return cheeseMatch;
    }

    return cheeseMatch;
}



-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    
    NSInteger moneyBagsCount = [moneyBags count];
    
    for (NSUInteger i = 0; i < moneyBagsCount; i++) {
        
        // convert '$' string to a numeric integer value
        NSInteger dollarLength = [moneyBags[i] length];
        
        // convert <dollarLength> integer to string equivalent
        NSString *dollarValue = [NSString stringWithFormat:@"%ld", dollarLength];
        
        // create new string with '$' appended to dollarValue string
        NSString *dollarSign = @"$";
        NSString *scroogeDollars = [dollarSign stringByAppendingString:dollarValue];
        
        // add scroogeDollars to paperBills array
        [paperBills addObject:scroogeDollars];
        
    }
    
    
    return paperBills;
}

@end
