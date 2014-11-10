//
//  TitleScene.m
//  Space Cat
//
//  Created by Jacob Cho on 2014-11-10.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import "TitleScene.h"
#import "GamePlayScene.h"

@implementation TitleScene

-(id)initWithSize:(CGSize)size {
    
    if (self = [super initWithSize:size]) {
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"splash_1"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        
        [self addChild:background];
    }
    
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    GamePlayScene *gamePlayScene = [GamePlayScene sceneWithSize:self.frame.size];
    
    SKTransition *transition = [SKTransition fadeWithDuration:1.0];
    
    [self.view presentScene:gamePlayScene transition:transition];
    
    
}

@end
