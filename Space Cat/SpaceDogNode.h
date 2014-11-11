//
//  SpaceDogNode.h
//  Space Cat
//
//  Created by Jacob Cho on 2014-11-10.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

typedef NS_ENUM(NSUInteger, SpaceDogType) {
    SpaceDogTypeA,
    SpaceDogTypeB
};

@interface SpaceDogNode : SKSpriteNode

+(instancetype)spaceDogOfType:(SpaceDogType)type;

@end
