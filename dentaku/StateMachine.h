//
//  StateMachine.h
//  dentaku
//
//  Created by 松尾　牧人 on 13/01/17.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ViewController;
@interface StateMachine : NSObject

-(double)keisanx:(int)number;
-(double)keisany:(int)number;
-(double)keisan:(int)answer;
-(double)hantenx:(int)answer;
-(double)hanteny:(int)answer;
-(int)AC:(int)ans;
-(int)C:(int)ans;
@end
