//
//  HudNode.h
//  Space Cat
//
//  Created by Jacob Cho on 2014-11-10.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface HudNode : SKNode

@property (nonatomic) NSInteger lives;
@property (nonatomic) NSInteger score;

+(instancetype)hudAtPositon:(CGPoint)position inFrame:(CGRect)frame;
-(void)addPoints:(NSInteger)points;
-(BOOL)loseLife;

@end
