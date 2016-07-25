//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs
{
      NSMutableString *dwarfString = [[NSMutableString alloc] init];
      NSUInteger index = 1;
      for (NSString *name in dwarfs) {
            [dwarfString appendString:[NSString stringWithFormat:@"%lu. %@", index, name]];
            index++;
            if (![[dwarfs lastObject] isEqual:name]) {
                  [dwarfString appendString:@" | "];
                }
          }
      return dwarfString;
    }

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers
{
      NSMutableArray *shoutingPowers = [[NSMutableArray alloc] initWithCapacity:powers.count];
      for (NSString *power in powers) {
            NSString *uppercasePower = [power uppercaseString];
            NSString *powerWithExclamationMark = [NSString stringWithFormat:@"%@!", uppercasePower];
            [shoutingPowers addObject:powerWithExclamationMark];
          }
      return shoutingPowers;
    }

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers
{
      NSArray *shoutingPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
      NSMutableString *summonString = [[NSMutableString alloc] initWithString:@"Let our powers combine:"];
      for (NSString *power in shoutingPowers) {
            [summonString appendFormat:@"\n%@", power];
          }
      [summonString appendFormat:@"\nGo Planet!"];
      return summonString;
    }

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames
{
      NSMutableOrderedSet *cheeseSet = [[NSMutableOrderedSet alloc] initWithArray:cheesesInStock];
      NSSet *nameSet = [NSSet setWithArray:premiumCheeseNames];
      [cheeseSet intersectSet:nameSet];
      if (cheeseSet.count == 0) {
            return @"No premium cheeses in stock.";
          }
      else {
            return [cheeseSet firstObject];
          }
    }

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags
{
      NSMutableArray *bills = [[NSMutableArray alloc] initWithCapacity:moneyBags.count];
      for (NSString *money in moneyBags) {
            NSString *toAdd = [NSString stringWithFormat:@"$%lu", money.length];
            [bills addObject:toAdd];
          }
      return bills;
    }

@end
