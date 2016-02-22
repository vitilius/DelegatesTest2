//
//  VLDoctor.m
//  DelegatesTest
//
//  Created by Viktor Lukashevich on 19.02.16.
//  Copyright © 2016 Viktar Lukashevich. All rights reserved.
//

#import "VLDoctor.h"
#import "VLPatient.h"

@implementation VLDoctor

#pragma mark - VLPatientDelegate

- (void) report {
    NSLog(@"Here's report for today:");
    NSLog(@"Patients with headache - %ld; patients' names: %@", [self.headAchePatients count], _headAchePatients);
    NSLog(@"Patients with stomach ache - %ld; patients' names: %@", [self.stomachAchePatients count], _stomachAchePatients);
    NSLog(@"Patients with armache - %ld; patients' names: %@", [self.armAchePatients count], _armAchePatients);
    NSLog(@"Patients with legache - %ld; patients' names: %@", [self.legAchePatients count], _legAchePatients);
    NSLog(@"Patients with heartache - %ld; patients' names: %@", [self.heartAchePatients count], _heartAchePatients);

    

}

- (void)patientFeelsBad:(VLPatient *)patient {
    
    NSString* damagedBodyPart =[self hurtBodyPart];
    
    NSLog(@"My name is %@. I have problems with %@!", patient.name, damagedBodyPart);

    if ([damagedBodyPart isEqualToString:@"head"]) {
        
        NSLog(@"Patient %@ has a headache. He should take pill and have a rest", patient.name);
        [patient takesPill];
        [self.headAchePatients addObject:patient.name];
    }
    
    if ([damagedBodyPart isEqualToString:@"stomach"]) {
        
        NSLog(@"Patient %@ has a stomach ache. He shoud take pill and drink warm drinks", patient.name);
        [patient takesPill];
        [self.stomachAchePatients addObject:patient.name];
    }
    
    if ([damagedBodyPart isEqualToString:@"arm"]) {
        
        NSLog(@"Patient %@ has an arm ache. He shoud visit surgean at hospital", patient.name);
        [patient goesToHospital];
        [self.armAchePatients addObject:patient.name];
    }
    
    if ([damagedBodyPart isEqualToString:@"leg"]) {
        
        NSLog(@"Patient %@ has a leg ache. He shoud have a rest and drink energetic drinks", patient.name);
        [self.legAchePatients addObject:patient.name];
    }
    
    if ([damagedBodyPart isEqualToString:@"heart"]) {
        
        NSLog(@"Patient %@ has a heart ache! He have to make a shot and go to hospital!", patient.name);
        [patient makesShot];
        [patient goesToHospital];
        [self.heartAchePatients addObject:patient.name];
    }
    
}

- (NSString *)hurtBodyPart {
    int enumCounter = arc4random() % 5;
    return [self stringFromEnum:enumCounter];
}

- (NSString *)stringFromEnum:(int)enumCounter {
    
    NSString *result = nil;

    switch(enumCounter) {
        case VLHeart:
            result = @"heart";
            break;
        case VLHead:
            result = @"head";
            break;
        case VLArm:
            result = @"arm";
            break;
        case VLLeg:
            result = @"leg";
            break;
        case VLStomach:
            result = @"stomach";
            break;
    }
    return result;
}


@end
