//
//  FISAppDelegate.h
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */




-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs;

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers;

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers;

-(NSString *)firstPremiumCheeseInStock:(NSArray *)premiumCheeses premiumCheeseNames:(NSArray *)cheesesInStock;

-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags;



@end
