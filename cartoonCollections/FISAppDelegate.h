//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs;
-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers;
-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers;
-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames;
-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags;

/*
stringByRollCallingDwarfsInArray: that takes one NSArray argument called dwarfs and returns an NSString.
arrayOfPlaneteerShoutsFromArray: that takes one NSArray argument called powers and returns an NSArray.
summonCaptainPlanetWithPowers: that takes one NSArray argument called powers and returns an NSString.
firstPremiumCheeseInStock:premiumCheeseNames: that takes two NSArray arguments called cheesesInStock and premiumCheeseNames, and returns an NSString.
arrayByConvertingMoneyBagsIntoPaperBills: that takes one NSArray argument moneyBags and returns an NSArray.
*/


@end
