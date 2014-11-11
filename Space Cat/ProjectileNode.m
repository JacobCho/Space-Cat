//
//  ProjectileNode.m
//  Space Cat
//
//  Created by Jacob Cho on 2014-11-10.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import "ProjectileNode.h"
#import "Util.h"

@implementation ProjectileNode

+(instancetype)projectileAtPosition:(CGPoint)position {
    
    ProjectileNode *projectile = [self spriteNodeWithImageNamed:@"projectile_1"];
    
    projectile.position = position;
    projectile.name = @"Projectile";
    
    [projectile setUpAnimation];
    [projectile setupPhysicsBody];
    
    return projectile;
}

-(void)setUpAnimation {
    
    
    NSArray *textures = @[[SKTexture textureWithImageNamed:@"projectile_1"], [SKTexture textureWithImageNamed:@"projectile_2"], [SKTexture textureWithImageNamed:@"projectile_3"]];
    
    SKAction *animation = [SKAction animateWithTextures:textures timePerFrame:0.1];
    SKAction *repeatAction = [SKAction repeatActionForever:animation];
    
    [self runAction:repeatAction];
    
}

-(void)moveTowardsPosition:(CGPoint)position {
    
    float slope = (position.y - self.position.y) / (position.x - self.position.x);
    
    // slope = Y2 - Y1 / X2 - X1
    // Y2 - Y1 = slope * (X2 - X1)
    // Y2 = slope * X2 - slope * X1 + Y1
    
    
    float offscreenX;
    
    if (position.x <= self.position.x) {
        offscreenX = -10;
    }
    else {
        offscreenX = self.parent.frame.size.width + 10;
    }
    
    float offscreenY = slope * offscreenX - slope * self.position.x + self.position.y;
    
    CGPoint pointOffscreen = CGPointMake(offscreenX, offscreenY);
    
    float distanceA = pointOffscreen.y - self.position.y;
    float distanceB = pointOffscreen.x - self.position.x;
    
    float distanceC = sqrtf(powf(distanceA, 2) + powf(distanceB, 2));
    
    // distance = speed * time
    // time = distance / speed
    
    float time = distanceC / 400;
    
    SKAction *moveProjectile = [SKAction moveTo:pointOffscreen duration:time];
    [self runAction:moveProjectile];
    
}

-(void)setupPhysicsBody {
    self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.frame.size];
    self.physicsBody.affectedByGravity = NO;
    self.physicsBody.categoryBitMask = CollisionCategoryProjectile;
    self.physicsBody.collisionBitMask = 0;
    self.physicsBody.contactTestBitMask = CollisionCategoryEnemy;
    
}

@end
