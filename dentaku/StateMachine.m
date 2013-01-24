//
//  StateMachine.m
//  dentaku
//
//  Created by 松尾　牧人 on 13/01/17.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "StateMachine.h"


@implementation StateMachine
@synthesize x;
@synthesize y;

-(id)init{
    x = 0;
    shou = 0;
    W = 0;
    n = 0;
    y = 0;
    keisan = 0;
    s = 0;
    answer = 0;
    
    return self;
}
-(double)keisanx:(int)number{
    if (shou == 0){
        x=x*10+number;
            }
    else
    {
        W=number*pow(10,(-n));
        x=x+W;
        n=n+1;
    }
    return x;
}

-(double)keisany:(int)number{
    if (shou == 0){
        y=y*10+number;
           }
    else
    {
        W=number*pow(10,(-n));
        y=y+W;
        n=n+1;
    }
    return y;
}

-(double)keisan:(int)answer{
    switch (answer){
        case 1:
            x=x+y;
            break;
            
        case 2:
            x=x-y;
            break;
            
        case 3:
            x=x*y;
            break;
            
        case 4:
            x=x/y;
            break;
    }
    return x;
}

-(double)hantenx:(int)han{
    x=x*(-1);
    return x;
    }

-(double)hanteny:(int)han{
    y=y*(-1);
    return y;
}
    
-(int)AC:(int)ans{
    x=0;
    answer=0;
    y=0;
    keisan=0;
    shou=0;
    W=0;
    s=0;
    n=1;
    return x;
}
-(int)C:(int)ans{
    y=0;
    shou=0;
    W=0;
    s=0;
    n=1;
    return y;
}

@end
