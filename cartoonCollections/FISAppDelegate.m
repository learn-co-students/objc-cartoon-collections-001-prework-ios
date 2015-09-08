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
    
    NSArray * dwarfsToBeRollCalled = @[ @"Doc"  ,
                              @"Grumpy"  ,
                              @"Happy"   ,
                              @"Sleepy"  ,
                              @"Bashful" ,
                              @"Sneezy"  ,
                              @"Dopey"   ];
    
    NSLog(@"%@",[self stringByRollCallingDwarfsInArray:dwarfsToBeRollCalled]);
    
    NSArray * powersToBeCombined = @[@"earth" ,
                                    @"fire"  ,
                                    @"wind"  ,
                                    @"water" ,
                                    @"heart" ];
    
    NSLog(@"%@", [self summonCaptainPlanetWithPowers:[self arrayOfPlaneteerShoutsFromArray:powersToBeCombined]]);

    NSString * camembert = @"camembert";

    NSArray * premiumCheeses = @[ @"brie",
                                camembert,
                                @"jarlsberg" ];
    
    NSArray * cheesesInStock = @[ @"cheddar",
                                   camembert,
                                  @"string cheese" ];
    
    NSLog(@"%@", [self firstPremiumCheeseInStock:premiumCheeses premiumCheeseNames:cheesesInStock]);
    
    NSArray * scroogesMoneyBags = @[ @"$$$$$",
                           @"$" ,
                           @"$$",
                           @"$$$$$$$$$$"];
//    
//    NSArray * scroogesPaperBills = @[ @"$5",
//                            @"$1",
//                            @"$2",
//                            @"$10"];
    
    NSArray * scroogesPaperBills = [self arrayByConvertingMoneyBagsIntoPaperBills:scroogesMoneyBags];
    NSLog(@"%@", scroogesPaperBills);
    
     return YES;
}

/**
 
 *  Define your method implementations here.
 
 */

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs{
    
    NSMutableArray * tempA = [[NSMutableArray alloc]init];
    
    for ( int i = 0 ; i < dwarfs.count ; i++){
        
        [tempA addObject: [NSString stringWithFormat:@"%i. %@",i+1,dwarfs[i]]];

    }
    return [tempA componentsJoinedByString:@" | "];
}

-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers{
    
    NSMutableArray * powersAsShouts = [[NSMutableArray alloc] init];
    
    for ( int i = 0 ; i < powers.count ; i++){
        NSString * tempS = [NSString stringWithFormat:@"%@!",[powers[i] uppercaseString]];
        [powersAsShouts addObject: tempS];
    }
    return powersAsShouts;
}
-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers{
    
    NSArray * tempA = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSMutableString * outP = [[ NSMutableString alloc] init];
    
    for ( int i = 0 ; i < tempA.count ; i++){
        [outP appendString:[NSString stringWithFormat:@"\n%@",tempA[i]]];
    }
    return [NSString stringWithFormat:@"Let our powers combine:%@\nGo Planet!",outP];
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock
                    premiumCheeseNames:(NSArray *)premiumCheeseNames{
    
    NSString * cheeseName;
    for ( int i = 0 ; i < cheesesInStock.count ; i ++){
        for ( int j = 0 ; j < premiumCheeseNames.count ; j ++){
            
            if ([cheesesInStock[i] isEqualToString: premiumCheeseNames[j]]) {
                cheeseName = cheesesInStock[i];
            }
        }
    }
    
    if (cheeseName){
        return cheeseName;
    } else {
       return @"No premium cheeses in stock.";
    }
}


-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags{
    
    NSMutableArray * paperA = [[NSMutableArray alloc] init];
    for ( int i = 0 ; i < moneyBags.count ; i++){
        NSUInteger count = [moneyBags[i] length];
        
        NSString * paperS = [moneyBags[i] stringByReplacingOccurrencesOfString:moneyBags[i] withString:[NSString stringWithFormat:@"$%lu",count]];
        [paperA addObject:paperS];
    }
    
    return [paperA copy];
}

@end
