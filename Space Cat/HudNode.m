//
//  HudNode.m
//  Space Cat
//
//  Created by Jacob Cho on 2014-11-10.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import "HudNode.h"
#import "Util.h"

@implementation HudNode

+(instancetype)hudAtPositon:(CGPoint)position inFrame:(CGRect)frame {
    
    HudNode *hud = [self node];
    hud.position = position;
    hud.zPosition = 10;
    hud.name = @"HUD";
    
    SKSpriteNode *catHead = [SKSpriteNode spriteNodeWithImageNamed:@"HUD_cat_1"];
    catHead.position = CGPointMake(30, -10);
    
    [hud addChild:catHead];
    
    hud.lives = MaxLives;
    SKSpriteNode *lastLifeBar;
    
    for (int i = 0; i < hud.lives; i++) {
        
        SKSpriteNode *lifeBar = [SKSpriteNode spriteNodeWithImageNamed:@"HUD_life_1"];
        lifeBar.name = [NSString stringWithFormat:@"Life: %d", i + 1];
        
        [hud addChild:lifeBar];
        
        if (lastLifeBar == nil) {
            
            lifeBar.position = CGPointMake(catHead.position.x + 30, catHead.position.y);
            
        } else {
            lifeBar.position = CGPointMake(lastLifeBar.position.x + 10, lastLifeBar.position.y);
        }
        
        lastLifeBar = lifeBar;
    }
    
    SKLabelNode *scoreLabel = [SKLabelNode labelNodeWithFontNamed:@"Futura-Condensed-Extra-Bold"];
    scoreLabel.name = @"Score";
    scoreLabel.text = @"0";
    scoreLabel.fontSize = 24;
    scoreLabel.horizontalAlignmentMode = SKLabelHorizontalAlignmentModeRight;
    
    scoreLabel.position = CGPointMake(frame.size.width - 20, -10);
    [hud addChild:scoreLabel];
    
    return hud;
    
}

-(void)addPoints:(NSInteger)points {
    self.score += points;
    
    SKLabelNode *scoreLabel = (SKLabelNode*)[self childNodeWithName:@"Score"];
    scoreLabel.text = [NSString stringWithFormat:@"%d", (int)self.score];
}

-(BOOL)loseLife {
    
    if (self.lives > 0) {
        
        NSString *lifeNodeName = [NSString stringWithFormat:@"Life: %d", (int)self.lives];
        SKNode *lifeToRemove = [self childNodeWithName:lifeNodeName];
        [lifeToRemove removeFromParent];
        self.lives--;
    }
    
    
    return self.lives == 0;
}
@end
