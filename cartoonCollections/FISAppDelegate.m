//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 *  Define your method implementations here.
 
 */

-(NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    NSMutableString *dwarfNames = [[NSMutableString alloc]init];
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        NSInteger dwarfsIndex = i + 1;
        [dwarfNames appendFormat:@"%lu. %@", dwarfsIndex, dwarfs[i]];
        
        if(i < [dwarfs count] - 1) {
            [dwarfNames appendString:@" | "];
        }
    }
    NSLog(@"%@", dwarfNames);
    return dwarfNames;
}
-(NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *powersUpcase = [[NSMutableArray alloc]init];
    for(NSUInteger i = 0; i < [powers count]; i++) {
        NSString *stringOfPowersUppercase = [NSString stringWithFormat:@"%@!", [powers[i] uppercaseString]]; [powersUpcase addObject:stringOfPowersUppercase];
    }
    return powersUpcase;
}

-(NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSArray *shoutingPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSMutableString *summonCaptain = [[NSMutableString alloc]initWithString:@"Let our powers combine:\n"];
    for (NSInteger i = 0; i < [shoutingPowers count]; i++) {
        [summonCaptain appendFormat:@"%@\n", shoutingPowers[i]];
    }

    [summonCaptain appendString:@"Go Planet!"];
    return summonCaptain;
}

-(NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    for(NSUInteger i = 0; i < [cheesesInStock count]; i++) {
        NSString *cheeseForJerry = cheesesInStock[i];
        if ([premiumCheeseNames containsObject:cheesesInStock[i]]) {
            return cheeseForJerry;
    }
    }
    return @"No premium cheeses in stock.";

}


-(NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags; {
    NSMutableArray *bills = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSString *scroogesMoneyBag = moneyBags[i];
        NSUInteger moneyBagLength = [scroogesMoneyBag length];
        NSString *paperBill = [NSString stringWithFormat:@"$%lu", moneyBagLength];
        [bills addObject:paperBill];
    }
    return bills;
}



@end
