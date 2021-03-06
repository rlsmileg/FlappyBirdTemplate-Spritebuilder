//
//  Character.m
//  FlappyBird
//
//  Created by Gerald on 2/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Character.h"
#import "GamePlayScene.h"

@implementation Character

- (void)didLoadFromCCB
{
    self.position = ccp(115, 250);
    self.zOrder = DrawingOrderHero;
    self.physicsBody.collisionType = @"character";
}

- (void)flap
{
    //Schizo mode, random flap strength -RL
    int randUni = arc4random_uniform(600);
    
    [self.physicsBody applyImpulse:ccp(0, ((float)randUni + 250.f))];
}

@end
