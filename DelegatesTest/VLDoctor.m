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


- (void)patientFeelsBad:(VLPatient *)patient {
    
    NSString* damagedBodyPart =[self hurtBodyPart];
    
    NSLog(@"My name is %@. I have problems with %@!", patient.name, damagedBodyPart);

    if ([damagedBodyPart isEqualToString:@"head"]) {
        
        NSLog(@"Patient %@ has a headache. He shoud take pill and have a rest", patient.name);
        [patient takesPill];
    }
    if ([damagedBodyPart isEqualToString:@"stomach"]) {
        
        NSLog(@"Patient %@ has a stomach ache. He shoud take pill and drink warm drinks", patient.name);
        [patient takesPill];
    }
    if ([damagedBodyPart isEqualToString:@"arm"]) {
        
        NSLog(@"Patient %@ has an arm ache. He shoud visit surgean at hospital", patient.name);
        [patient goesToHospital];
    }
    if ([damagedBodyPart isEqualToString:@"leg"]) {
        
        NSLog(@"Patient %@ has a leg ache. He shoud have a rest and drink energetic drinks", patient.name);
    }
    if ([damagedBodyPart isEqualToString:@"heart"]) {
        
        NSLog(@"Patient %@ has a heart ache! He have to make a shot and go to hospital!", patient.name);
        [patient makesShot];
        [patient goesToHospital];
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
