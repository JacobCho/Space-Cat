//
//  GameOverNode.h
//  Space Cat
//
//  Created by Jacob Cho on 2014-11-10.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GameOverNode : SKNode

+(instancetype)gameOverAtPosition:(CGPoint)position;

-(void)performAnimation;

@end
