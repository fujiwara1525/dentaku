//
//  ViewController.h
//  dentaku
//
//  Created by 松尾　牧人 on 12/11/08.
//  Copyright (c) 2012年 Makito Matsuo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StateMachine.h"

@interface ViewController : UIViewController
{
    IBOutlet UILabel* label;
    enum {dentaku} state;
}



@property StateMachine* model;

- (IBAction)zero:(id)sender;

- (IBAction)ten:(id)sender;

- (IBAction)equal:(id)sender;

- (IBAction)one:(id)sender;

- (IBAction)twe:(id)sender;

- (IBAction)three:(id)sender;

- (IBAction)fore:(id)sender;

- (IBAction)five:(id)sender;

- (IBAction)six:(id)sender;

- (IBAction)seven:(id)sender;

- (IBAction)eight:(id)sender;

- (IBAction)nine:(id)sender;

- (IBAction)plus:(id)sender;

- (IBAction)hiku:(id)sender;

- (IBAction)AC:(id)sender;

- (IBAction)C:(id)sender;

- (IBAction)kakeru:(id)sender;

- (IBAction)waru:(id)sender;

- (IBAction)hanten:(id)sender;



@end
