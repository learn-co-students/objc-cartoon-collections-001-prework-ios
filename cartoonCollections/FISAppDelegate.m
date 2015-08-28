//
//  FISAppDelegate.m
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}


-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs
{
  NSString *rollCallLine = @"";
  for (NSUInteger i = 0; i<dwarfs.count-1; i++) {
    NSString *rollCall = dwarfs[i];
    NSUInteger numberInRoll = i+1;
    NSString *nextInLine = [NSString stringWithFormat:@"%lu. %@ | ", numberInRoll, rollCall];
    rollCallLine = [rollCallLine stringByAppendingString:nextInLine];
  }
  
  for (int i=6; i<7; i++) {
    NSString *rollCall = dwarfs[i];
    NSUInteger numberInRoll = i+1;
    rollCallLine = [NSString stringWithFormat:@"%@%lu. %@", rollCallLine, numberInRoll, rollCall];
  }
  
  return rollCallLine;
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers

{
  
  NSMutableArray *arrayOfPlaneteerShoutsFromArray = [[NSMutableArray alloc]init];
  for (NSUInteger i = 0; i<powers.count; i++) {
    NSString *capitalPowers;
    NSString *returnPowers;
    NSString *eachPowers = powers[i];
    capitalPowers = [eachPowers uppercaseString];
    returnPowers = [NSString stringWithFormat: @"%@!", capitalPowers];
    [arrayOfPlaneteerShoutsFromArray addObject:returnPowers];
  }
  return arrayOfPlaneteerShoutsFromArray;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers
{
  NSArray *shoutingPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
  NSString *summonCaptainPlanetWithPowers = @"";
  //  NSString *opening = @"Let our powers combine:";
  //  NSString *closing = @"Go Planet!";
  for (NSUInteger i = 0; i<shoutingPowers.count; i++) {
    NSString *currentPower = shoutingPowers[i];
    NSString *holdPower;
    holdPower = [NSString stringWithFormat:@"\n%@", currentPower];
    summonCaptainPlanetWithPowers = [summonCaptainPlanetWithPowers stringByAppendingString:holdPower];
  }
  return [NSString stringWithFormat:@"Let our powers combine:%@\nGo Planet!", summonCaptainPlanetWithPowers];
}
-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames
{
  NSString *cheese;
  for (NSUInteger i = 0; i<premiumCheeseNames.count; i++) {
    
    if ([cheesesInStock containsObject:premiumCheeseNames[i]]) {
      cheese = premiumCheeseNames[i];
      return cheese;
      
    }
    else
      cheese = @"No premium cheeses in stock.";
    
    
  }
  return cheese;
}


-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags
{
  NSMutableArray *arrayByConvertingMoneyBagsIntoPaperBills = [[NSMutableArray alloc]init];
  for (NSUInteger i = 0; i<moneyBags.count; i++) {
    NSUInteger newCurrency;
    newCurrency = [moneyBags[i] length];
    NSString *intToString = [NSString stringWithFormat:@"$%lu", newCurrency];
    [arrayByConvertingMoneyBagsIntoPaperBills addObject:intToString];
  }
  return arrayByConvertingMoneyBagsIntoPaperBills;
}


@end
