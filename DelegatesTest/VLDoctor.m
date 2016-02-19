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


- (void) patientFeelsBad: (VLPatient *) patient {
    
    int i = 0;

    if ([patient hasHeadAche]) {
        
        NSLog(@"Patient %@ has a headache", patient.name);
        i++;

        
        if (patient.temperature < 37.f) {
            NSLog(@"Patient %@ should rest", patient.name);
        } else if (patient.temperature >= 37.f && patient.temperature <= 38.5f) {
            [patient takesPill];
        } else if (patient.temperature > 38.5f && patient.temperature <= 40.f) {
            [patient makesShot];
        } else if (patient.temperature > 40.f) {
            [patient goesToHospital];
        }
    }
    
    if ([patient hasStomachAche]) {
        
        NSLog(@"Patient %@ has a stomachache", patient.name);
        i++;
        
        if (patient.temperature < 37.f) {
            [patient takesPill];
        } else if (patient.temperature > 37.f && patient.temperature <= 38.5f){
            [patient goesToHospital];
        } else if (patient.temperature > 38.5f) {
            NSLog(@"Patient %@ has appendicite!", patient.name);
            [patient goesToSurgery];
        }
    }
    
    if (i == 0) {
        NSLog(@"Patient %@ has no physical problems, he's got to go to psycologist!", patient.name);
    }
}




@end
