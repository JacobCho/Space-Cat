//
//  TitleScene.m
//  Space Cat
//
//  Created by Jacob Cho on 2014-11-10.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import "TitleScene.h"
#import "GamePlayScene.h"
#import <AVFoundation/AVFoundation.h>

@interface TitleScene()

@property (nonatomic) SKAction *pressStartSFX;
@property (nonatomic) AVAudioPlayer *backgroundMusic;

@end

@implementation TitleScene

-(id)initWithSize:(CGSize)size {
    
    if (self = [super initWithSize:size]) {
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"splash_1"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        
        [self addChild:background];
        
        self.pressStartSFX = [SKAction playSoundFileNamed:@"PressStart.caf" waitForCompletion:NO];
        
        NSURL *url = [[NSBundle mainBundle] URLForResource:@"StartScreen" withExtension:@"mp3"];
        
        self.backgroundMusic = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        
        self.backgroundMusic.numberOfLoops = -1;
        [self.backgroundMusic prepareToPlay];
    }
    
    return self;
}

-(void)didMoveToView:(SKView *)view {
    
    [self.backgroundMusic play];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self runAction:self.pressStartSFX];
    
    GamePlayScene *gamePlayScene = [GamePlayScene sceneWithSize:self.frame.size];
    
    SKTransition *transition = [SKTransition fadeWithDuration:1.0];
    
    [self.view presentScene:gamePlayScene transition:transition];
    
    [self.backgroundMusic stop];
    
}

@end
