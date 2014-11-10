//
//  GameScene.m
//  Space Cat
//
//  Created by Daniel Mathews on 2014-11-02.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(id)initWithSize:(CGSize)size {
    
    if (self = [super initWithSize:size]) {
        
        
    }
                
    return self;
}

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    
    self.backgroundColor = [SKColor blueColor];
    

    SKSpriteNode *greenNode = [SKSpriteNode spriteNodeWithColor:[SKColor greenColor] size:CGSizeMake(100, 100)];
    greenNode.position = CGPointMake(150, 150);
    greenNode.anchorPoint = CGPointMake(0, 0);
    
    [self addChild:greenNode];

    SKSpriteNode *redNode = [SKSpriteNode spriteNodeWithColor:[SKColor redColor] size:CGSizeMake(15, 15)];
    redNode.position = CGPointMake(150, 150);
    redNode.anchorPoint = CGPointMake(0, 0);
    
    [self addChild:redNode];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
