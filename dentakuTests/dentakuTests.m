//
//  dentakuTests.m
//  dentakuTests
//
//  Created by 松尾　牧人 on 13/01/10.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "dentakuTests.h"


@implementation dentakuTests
@synthesize statemachine;

- (void)setUp
{
    [super setUp];
    statemachine = [[StateMachine alloc] init];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

-(void)testAnswer
{
    statemachine.x = 1;
    statemachine.y = 2;
    double p1 = [statemachine keisan:1];
    STAssertEqualsWithAccuracy(3.0, p1,0.00001, @"error");    //普通の足し算
    
    statemachine.x = -1;
    statemachine.y = -3;
    double p2 = [statemachine keisan:1];
    STAssertEqualsWithAccuracy(-4.0, p2, 0.00001, @"error");  //マイナス同士の足し算
    
    statemachine.x = 5;
    statemachine.y = -9;
    double p3 = [statemachine keisan:1];
    STAssertEqualsWithAccuracy(-4.0, p3, 0.00001, @"error");  //マイナスの出る足し算
  
    statemachine.x = 8;
    statemachine.y = 6;
    double h1 = [statemachine keisan:2];
    STAssertEqualsWithAccuracy(2.0, h1, 0.00001, @"error");   //普通の引き算
    
    statemachine.x = 5;
    statemachine.y = 6;
    double h2 = [statemachine keisan:2];
    STAssertEqualsWithAccuracy(-1.0, h2, 0.00001, @"error");  //マイナスの出る引き算
    
    statemachine.x = 5;
    statemachine.y = -9;
    double h3 = [statemachine keisan:2];
    STAssertEqualsWithAccuracy(14.0, h3, 0.00001, @"error");  //プラスになる引き算
   
    statemachine.x = 1;
    statemachine.y = 2;
    double k1 = [statemachine keisan:3];
    STAssertEqualsWithAccuracy(2.0, k1,0.00001, @"error");    //普通のかけ算
    
    statemachine.x = -1;
    statemachine.y = -3;
    double k2 = [statemachine keisan:3];
    STAssertEqualsWithAccuracy(3.0, k2, 0.00001, @"error");  //マイナス同士のかけ算
    
    statemachine.x = 5;
    statemachine.y = -2;
    double k3 = [statemachine keisan:3];
    STAssertEqualsWithAccuracy(-10.0, k3, 0.00001, @"error");  //マイナスの出るかけ算
    
    statemachine.x = 8;
    statemachine.y = 4;
    double w1 = [statemachine keisan:4];
    STAssertEqualsWithAccuracy(2.0, w1, 0.00001, @"error");   //普通の割算
    
    statemachine.x = 6;
    statemachine.y = -3;
    double w2 = [statemachine keisan:4];
    STAssertEqualsWithAccuracy(-2.0, w2, 0.00001, @"error");  //マイナスの出る割算
    
    statemachine.x = -4;
    statemachine.y = -2;
    double w3 = [statemachine keisan:4];
    STAssertEqualsWithAccuracy(2.0, w3, 0.00001, @"error");  //プラスになる割算
    
    statemachine.x = 2.5;
    statemachine.y = 1.3;
    double p4 = [statemachine keisan:1];
    STAssertEqualsWithAccuracy(3.8, p4, 0.00001, @"error");  //小数の足し算
    
    statemachine.x = 3.6;
    statemachine.y = 2.5;
    double h4 = [statemachine keisan:2];
    STAssertEqualsWithAccuracy(1.1, h4, 0.00001, @"error");   //小数の引き算
    
    statemachine.x = 2.4;
    statemachine.y = 1.5;
    double k4 = [statemachine keisan:3];
    STAssertEqualsWithAccuracy(3.6, k4, 0.00001, @"error");  //小数のかけ算
    
    statemachine.x = 4.4;
    statemachine.y = 2.2;
    double w4 = [statemachine keisan:4];
    STAssertEqualsWithAccuracy(2.0, w4, 0.00001, @"error");  //小数の割り算
    
}


@end
