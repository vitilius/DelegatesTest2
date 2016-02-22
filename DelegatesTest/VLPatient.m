//
//  VLPatient.m
//  DelegatesTest
//
//  Created by Viktor Lukashevich on 19.02.16.
//  Copyright © 2016 Viktar Lukashevich. All rights reserved.
//

#import "VLPatient.h"

@implementation VLPatient

- (id)initWithName:(NSString *)name temperature:(CGFloat)temperature delegate:(id)delegate {
   
    self = [super init];
    if (self) {
        self.name = name;
        self.temperature = temperature;
        self.delegate = delegate;
    }

    return self;
}

- (BOOL)gotWorse {
    
    BOOL gotWorse = arc4random()%2;
    
    if (gotWorse) {
        [self.delegate patientFeelsBad:self];
    }
    
    return gotWorse;
}

- (BOOL)hasHeadAche {
    
    return arc4random()%2;
}

- (BOOL)hasStomachAche {
    
    return arc4random()%2;
}

- (void)takesPill {
    NSLog(@"Patient %@ takes a pill", self.name);
}

- (void)makesShot {
    NSLog(@"Patient %@ makes a shot", self.name);

}

- (void)goesToHospital {
    NSLog(@"Patient %@ goes to hospital", self.name);

}

- (void)goesToSurgery {
    NSLog(@"Patient %@ goes to surgery", self.name);

}


@end
