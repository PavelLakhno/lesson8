//
//  AppDelegate.m
//  NSDictionary
//
//  Created by Павел Лахно on 17.07.17.
//  Copyright © 2017 Павел Лахно. All rights reserved.
//

#import "PLAppDelegate.h"
#import "PLStudent.h"

@interface PLAppDelegate ()

@end

@implementation PLAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    PLStudent *student1 = [[PLStudent alloc] init];
    student1.firstName = @"Oleg";
    student1.lastName = @"Ivanov";
    student1.whatYouSay = @"I am ready!";
    
    PLStudent *student2 = [[PLStudent alloc] init];
    student2.firstName = @"Alex";
    student2.lastName = @"Petrov";
    student2.whatYouSay = @"Hello, People!";
    
    PLStudent *student3 = [[PLStudent alloc] init];
    student3.firstName = @"Ivan";
    student3.lastName = @"Yagudin";
    student3.whatYouSay = @"Stop, plz";
    
    PLStudent *student4 = [[PLStudent alloc] init];
    student4.firstName = @"Timur";
    student4.lastName = @"Nebesniy";
    student4.whatYouSay = @"What are you doing?";
    
    NSDictionary *studentArray = [NSDictionary dictionaryWithObjectsAndKeys:
                                  student1, [student1.firstName stringByAppendingString:student1.lastName],
                                  student2, [student2.firstName stringByAppendingString:student2.lastName],
                                  student3, [student3.firstName stringByAppendingString:student3.lastName],
                                  student4, [student4.firstName stringByAppendingString:student4.lastName],  nil];
    
    NSLog(@"%@", studentArray);
    
    

    NSLog(@"Not sorted array");

    for (NSString* key in [studentArray allKeys]) {
        PLStudent* student = [studentArray objectForKey:key];
        NSLog(@"%@",[student getFraze]);
    }

    
    NSArray *sortArray = [studentArray keysSortedByValueUsingComparator:
                          ^NSComparisonResult(id obj1, id obj2) {
                              return [[obj1 firstName] compare:[obj2 firstName]];
                          }];
    
    NSLog(@"Sorted array");
    
    for (NSString* key in sortArray) {
        PLStudent* student = [studentArray objectForKey:key];
        NSLog(@"%@",[student getFraze]);
    }

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
