//
//  StateMachine.h
//  dentaku
//
//  Created by 松尾　牧人 on 13/01/17.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ViewController;
@interface StateMachine : NSObject{
    int shou;
    double W;

    int n;
    int keisan;
    int s;
    int answer;
}

@property double x;
@property double y;

-(double)keisanx:(int)number;
-(double)keisany:(int)number;
-(double)keisan:(int)answer;
-(double)hantenx:(int)han;
-(double)hanteny:(int)han;
-(int)AC:(int)ans;
-(int)C:(int)ans;
@end
