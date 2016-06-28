//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs;

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers;

- (NSArray *)summonCaptainPlanetWithPowers:(NSArray *)powers;

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeses;

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags;

@end
