//  FISAppDelegateSpec.m

#import "Specta.h"
#import "FISAppDelegate.h"
#define EXP_SHORTHAND
#import "Expecta/Expecta.h"

SpecBegin(FISAppDelegate)

describe(@"FISAppDelegate", ^{

    describe(@"Cartoon Collections Methods", ^{
        __block FISAppDelegate *appDelegate;
        
        beforeAll(^{
            appDelegate = [[FISAppDelegate alloc] init];
        });
        
        describe(@"stringByRollCallingDwarfsInArray:", ^{
            __block NSArray *dwarfsToBeRollCalled;
            __block NSString *expectedRollCall;
            
            beforeEach(^{
                dwarfsToBeRollCalled = @[ @"Doc"     ,
                                          @"Grumpy"  ,
                                          @"Happy"   ,
                                          @"Sleepy"  ,
                                          @"Bashful" ,
                                          @"Sneezy"  ,
                                          @"Dopey"   ];
                
                expectedRollCall = @"1. Doc | 2. Grumpy | 3. Happy | 4. Sleepy | 5. Bashful | 6. Sneezy | 7. Dopey";
            });

            it(@"returns an NSString object",^{
                expect([appDelegate stringByRollCallingDwarfsInArray:dwarfsToBeRollCalled]).to.beKindOf([NSString class]);
            });

            it(@"returns a string of all of the dwarfs' names with a number prefix and separated by a '|' symbol",^{
                expect([appDelegate stringByRollCallingDwarfsInArray:dwarfsToBeRollCalled]).to.equal(expectedRollCall);
            });
        });
        
        describe(@"arrayOfPlaneteerShoutsFromArray:", ^{
            __block NSArray *powersToBeCombined;
            __block NSArray *powersAsShouts;
            
            beforeEach(^{
                powersToBeCombined = @[ @"earth" ,
                                        @"fire"  ,
                                        @"wind"  ,
                                        @"water" ,
                                        @"heart" ];
                
                powersAsShouts = @[ @"EARTH!" ,
                                    @"FIRE!"  ,
                                    @"WIND!"  ,
                                    @"WATER!" ,
                                    @"HEART!" ];
            });
            it(@"returns an NSArray object",^{
                expect([appDelegate arrayOfPlaneteerShoutsFromArray:powersToBeCombined]).to.beKindOf([NSArray class]);
            });
            
            it(@"returns the string in the submitted array as shouts",^{
                expect([appDelegate arrayOfPlaneteerShoutsFromArray:powersToBeCombined]).to.equal(powersAsShouts);
            });
        });
        
        describe(@"summonCaptainPlanetWithPowers:", ^{
            __block NSArray *powersToBeCombined;
            __block NSString *captainPlanetSummons;
            
            beforeEach(^{
                powersToBeCombined = @[ @"earth" ,
                                        @"fire"  ,
                                        @"wind"  ,
                                        @"water" ,
                                        @"heart" ];
                
                captainPlanetSummons = @"Let our powers combine:\nEARTH!\nFIRE!\nWIND!\nWATER!\nHEART!\nGo Planet!";
            });

            it(@"returns an NSString object",^{
                expect([appDelegate summonCaptainPlanetWithPowers:powersToBeCombined]).to.beKindOf([NSString class]);
            });
            
            it(@"returns the Planeteers' call to summon Captain Planet",^{
                NSLog(@"$@", [appDelegate summonCaptainPlanetWithPowers:powersToBeCombined]);
                expect([appDelegate summonCaptainPlanetWithPowers:powersToBeCombined]).to.equal(@"Let our powers combine:\nEARTH!\nFIRE!\nWIND!\nWATER!\nHEART!\nGo Planet!");
            });
        });
        
        describe(@"firstPremiumCheeseInStock:premiumCheeseNames:", ^{
            __block NSString *camembert;
            __block NSArray *premiumCheeses;
            __block NSArray *cheesesInStock;
            
            beforeEach(^{
                camembert = @"camembert";
                
                premiumCheeses = @[ @"brie"      ,
                                    camembert    ,
                                    @"jarlsberg" ];
                
                cheesesInStock = @[ @"cheddar"       ,
                                    camembert        ,
                                    @"string cheese" ];
            });
            
            it(@"returns an NSString object",^{
                expect([appDelegate firstPremiumCheeseInStock:cheesesInStock
                                           premiumCheeseNames:premiumCheeses]).to.beKindOf([NSString class]);
            });
            
            it(@"returns the first string in the first argument array that is also in the second argument array", ^{
                expect([appDelegate firstPremiumCheeseInStock:cheesesInStock
                                           premiumCheeseNames:premiumCheeses]).to.equal(camembert);
            });
            
            it(@"returns an error string when no contents of the first array match the contents of the second array", ^{
                expect([appDelegate firstPremiumCheeseInStock:cheesesInStock
                                           premiumCheeseNames:@[ @"gorgonzola" ]]).to.equal(@"No premium cheeses in stock.");
            });
        });
        
        describe(@"arrayByConvertingMoneyBagsIntoPaperBills:", ^{
            __block NSArray *scroogesMoneyBags;
            __block NSArray *scroogesPaperBills;
            
            beforeEach(^{
                scroogesMoneyBags = @[ @"$$$$$"      ,
                                       @"$"          ,
                                       @"$$"         ,
                                       @"$$$$$$$$$$" ];
                
                scroogesPaperBills = @[ @"$5"  ,
                                        @"$1"  ,
                                        @"$2"  ,
                                        @"$10" ];
            });
            
            it(@"returns an NSArray object",^{
                expect([appDelegate arrayByConvertingMoneyBagsIntoPaperBills:scroogesMoneyBags
                        ]).to.beKindOf([NSArray class]);
            });
            
            it(@"returns on array of numerical strings equivalent to the counts of the dollar signs in the submitted array's strings",^{
                expect([appDelegate arrayByConvertingMoneyBagsIntoPaperBills:scroogesMoneyBags
                        ]).to.equal(scroogesPaperBills);
            });
        
        });
    });
});

SpecEnd
