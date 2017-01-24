//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//Given array of dwarf names, return string listing dwarf names and numbers
//in format "1. [name 1] | 2. [name 2] [...] | n. [name n]"
- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs;

//Given array of planeteer powers, return array of shouts (uppercase power followed by !)
- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers;

//Given array of planeteer powers, return string containing incantation to summon Captain Planet
//Uses arrayOfPlaneteerShoutsFromArray to generate shouts from powers
- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers;

//Compare each cheese in stock to list of premium cheese names and return the first match, or error message if no match
- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames;

//Given array of strings representing money bags, return array with count of '$' in each bag, prefixed by dollar sign
- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags;

@end
