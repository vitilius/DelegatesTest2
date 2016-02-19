//
//  AppDelegate.m
//  DelegatesTest
//
//  Created by Viktor Lukashevich on 19.02.16.
//  Copyright © 2016 Viktar Lukashevich. All rights reserved.
//

#import "AppDelegate.h"
#import "VLPatient.h"
#import "VLFriend.h"
#import "VLDoctor.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    VLDoctor* doctor = [[VLDoctor alloc] init];
    VLFriend* friend1 = [[VLFriend alloc] init];
    VLFriend* friend2 = [[VLFriend alloc] init];
    
    VLPatient* patient1 = [[VLPatient alloc] initWithName:@"Vasya" :36.9f :doctor];
    VLPatient* patient2 = [[VLPatient alloc] initWithName:@"Oleg" :37.2f :doctor];
    VLPatient* patient3 = [[VLPatient alloc] initWithName:@"Pasha" :38.1f :friend1];
    VLPatient* patient4 = [[VLPatient alloc] initWithName:@"Igor" :38.9f :doctor];
    VLPatient* patient5 = [[VLPatient alloc] initWithName:@"Dima" :39.4f :friend2];
    VLPatient* patient6 = [[VLPatient alloc] initWithName:@"Kolya" :40.5f :doctor];


    
    NSArray* patients = @[patient1, patient2, patient3, patient4, patient5, patient6];
    
    for (VLPatient *patient in patients) {
        NSLog(@"%@ are you okay? %@", patient.name, ![patient gotWorse] ? @"YES" : @"NO");
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
