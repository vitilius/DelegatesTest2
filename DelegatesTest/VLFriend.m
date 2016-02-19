//
//  VLFriend.m
//  DelegatesTest
//
//  Created by Viktor Lukashevich on 19.02.16.
//  Copyright © 2016 Viktar Lukashevich. All rights reserved.
//

#import "VLFriend.h"

@implementation VLFriend

#pragma mark - VLPatientDelegate


- (void) patientFeelsBad: (VLPatient *) patient {
    
    int i = 0;
    
    if ([patient hasHeadAche]) {
        i++;
        NSLog(@"Friend %@ has a headache", patient.name);
        NSLog(@"%@, try to take an aspirine", patient.name);
    }
    
    if ([patient hasStomachAche]) {
        i++;
        NSLog(@"Friend %@ has a stomachache", patient.name);
        NSLog(@"%@, try to drink some coca-cola", patient.name);
    }
    
    if (i == 0) {
        NSLog(@"Friend %@ has got to go to a good-good party!", patient.name);
    }
}


@end
