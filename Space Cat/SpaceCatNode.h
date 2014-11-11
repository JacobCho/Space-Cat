//
//  SpaceCatNode.h
//  Space Cat
//
//  Created by Jacob Cho on 2014-11-10.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SpaceCatNode : SKSpriteNode

+(instancetype) spaceCatAtPosition:(CGPoint)position;
-(void)performTap;

@end
