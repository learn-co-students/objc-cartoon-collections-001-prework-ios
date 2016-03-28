//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//stringByRollCallingDwarfsInArray: that takes one NSArray argument called dwarfs and returns an NSString.

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs;

//arrayOfPlaneteerShoutsFromArray: that takes one NSArray argument called powers and returns an NSArray.

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers;

//summonCaptainPlanetWithPowers: that takes one NSArray argument called powers and returns an NSString.

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers;

//firstPremiumCheeseInStock:premiumCheeseNames: that takes two NSArray arguments called cheesesInStock and premiumCheeseNames, and returns an NSString.

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock  premiumCheeseNames:(NSArray *)premiumCheeseNames;

//arrayByConvertingMoneyBagsIntoPaperBills: that takes one NSArray argument moneyBags and returns an NSArray.

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags;

@end
