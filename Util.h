//
//  Util.h
//  Space Cat
//
//  Created by Jacob Cho on 2014-11-10.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import <Foundation/Foundation.h>

static const int SpaceDogMinSpeed = -100;
static const int SpaceDogMaxSpeed = -50;
static const int MaxLives = 4;
static const int PointsPerHit = 100;

typedef NS_OPTIONS(NSUInteger, CollisionCategory) {
    CollisionCategoryEnemy = 1 << 0,
    CollisionCategoryProjectile = 1 << 1,
    CollisionCategoryDebris = 1 << 2,
    CollisionCategoryGround = 1 <<3
};

@interface Util : NSObject 

+(NSInteger)randomWithMin:(NSInteger)min max:(NSInteger)max;



@end
