//
//  GroundNode.m
//  Space Cat
//
//  Created by Jacob Cho on 2014-11-10.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import "GroundNode.h"
#import "Util.h"

@implementation GroundNode

+(instancetype) groundWithSize:(CGSize)size {
    GroundNode *ground = [self spriteNodeWithColor:[SKColor clearColor] size:size];
    ground.name = @"Ground";
    
    ground.position = CGPointMake(size.width/2, size.height/2);
    [ground setUpPhysicsBody];
    
    return ground;
}

-(void)setUpPhysicsBody {
    self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.frame.size];
    self.physicsBody.affectedByGravity = NO;
    self.physicsBody.dynamic = NO;
    self.physicsBody.categoryBitMask = CollisionCategoryGround;
    self.physicsBody.collisionBitMask = CollisionCategoryDebris;
    self.physicsBody.contactTestBitMask = CollisionCategoryEnemy;
    
}

@end
