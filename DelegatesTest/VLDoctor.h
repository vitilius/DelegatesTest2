//
//  VLDoctor.h
//  DelegatesTest
//
//  Created by Viktor Lukashevich on 19.02.16.
//  Copyright © 2016 Viktar Lukashevich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VLPatient.h"

@interface VLDoctor : NSObject <VLPatientDelegate>

@property (strong, nonatomic) NSMutableArray *headAchePatients;
@property (strong, nonatomic) NSMutableArray *legAchePatients;
@property (strong, nonatomic) NSMutableArray *armAchePatients;
@property (strong, nonatomic) NSMutableArray *heartAchePatients;
@property (strong, nonatomic) NSMutableArray *stomachAchePatients;

- (void) report;

@end
