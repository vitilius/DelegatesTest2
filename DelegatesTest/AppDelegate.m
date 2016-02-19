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
    
    VLPatient* patient1 = [[VLPatient alloc] init];
    patient1.name = @"Vasya";
    patient1.temperature = 36.9f;
    
    VLPatient* patient2 = [[VLPatient alloc] init];
    patient2.name = @"Oleg";
    patient2.temperature = 37.2f;
    
    VLPatient* patient3 = [[VLPatient alloc] init];
    patient3.name = @"Pasha";
    patient3.temperature = 38.1f;
    
    VLPatient* patient4 = [[VLPatient alloc] init];
    patient4.name = @"Igor";
    patient4.temperature = 38.9f;
    
    VLPatient* patient5 = [[VLPatient alloc] init];
    patient5.name = @"Dima";
    patient5.temperature = 39.4f;
    
    VLPatient* patient6 = [[VLPatient alloc] init];
    patient6.name = @"Kolya";
    patient6.temperature = 40.5f;
    
    VLDoctor* doctor = [[VLDoctor alloc] init];
    
    VLFriend* friend1 = [[VLFriend alloc] init];
    VLFriend* friend2 = [[VLFriend alloc] init];
    
    patient1.delegate = doctor;
    patient2.delegate = doctor;
    patient3.delegate = friend1;
    patient4.delegate = doctor;
    patient5.delegate = friend2;
    patient6.delegate = doctor;
    
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
