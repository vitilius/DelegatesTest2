//
//  VLPatient.h
//  DelegatesTest
//
//  Created by Viktor Lukashevich on 19.02.16.
//  Copyright © 2016 Viktar Lukashevich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol VLPatientDelegate;

@interface VLPatient : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <VLPatientDelegate> delegate;

- (BOOL)gotWorse;
- (BOOL)hasHeadAche;
- (BOOL)hasStomachAche;
- (void)takesPill;
- (void)makesShot;
- (void)goesToHospital;
- (void)goesToSurgery;
- (id)initWithName:(NSString *)name :(CGFloat)temperature :(id)delegate;


@end

@protocol VLPatientDelegate

@required

- (void)patientFeelsBad:(VLPatient *)patient;

@end