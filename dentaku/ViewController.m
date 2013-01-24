//
//  ViewController.m
//  dentaku
//
//  Created by 松尾　牧人 on 12/11/08.
//  Copyright (c) 2012年 Makito Matsuo. All rights reserved.
//

#import "ViewController.h"
#import "StateMachine.h"

@interface ViewController (){
    StateMachine *statemachine;
}

@end

@implementation ViewController

double x=0;
int answer;
double y=0;
int keisan=0;
double Z=0;
int shou=0;
double W=0;
double s=0;
int n=1;
int ans;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    statemachine = [[StateMachine alloc] init];
    [self setState:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)Button:(int)number{
    switch (keisan){
        case 0:
            
            [[self label] setText:[NSString stringWithFormat:@"%g",[statemachine keisanx:number]]];
            break;
       
        case 1:
            
            [[self label] setText:[NSString stringWithFormat:@"%g",[statemachine keisany:number]]];
            break;
    }
}

- (IBAction)zero:(id)sender {

    [self Button:0];
            
}

- (IBAction)ten:(id)sender {
        shou=1;
    
}

- (IBAction)equal:(id)sender
{

    [[self label] setText:[NSString stringWithFormat:@"%g",[statemachine keisan:answer]]];
    y=0;
    keisan=0;
}

- (IBAction)one:(id)sender {
    
    [self Button:1];
}

- (IBAction)twe:(id)sender {
    
   [self Button:2];
}

- (IBAction)three:(id)sender {
    
    [self Button:3];
}

- (IBAction)fore:(id)sender {
    
    [self Button:4];
}

- (IBAction)five:(id)sender {
    
    [self Button:5];
}

- (IBAction)six:(id)sender {
    
   [self Button:6];
}

- (IBAction)seven:(id)sender {
    
    [self Button:7];
}

- (IBAction)eight:(id)sender {
    
    [self Button:8];
}

- (IBAction)nine:(id)sender {
    
    [self Button:9];
}

- (IBAction)plus:(id)sender {
    switch (keisan) {
        case 0:
            break;
        case 1:
            [[self label] setText:[NSString stringWithFormat:@"%g",[statemachine keisan:answer]]];
        y=0;
            break;
          }
    keisan=1;
    shou=0;
    n=1;
    answer=1;
}


- (IBAction)hiku:(id)sender {
    switch (keisan) {
        case 0:
            break;
            
        case 1:
        [[self label] setText:[NSString stringWithFormat:@"%g",[statemachine keisan:answer]]];
        y=0;
            break;
    }
    keisan=1;
    shou=0;
    n=1;
    answer=2;
}

- (IBAction)AC:(id)sender {

    [[self label] setText:[NSString stringWithFormat:@"%d",[statemachine AC:answer]]];
}

- (IBAction)C:(id)sender {
    switch (keisan) {
        case 0:
    [[self label] setText:[NSString stringWithFormat:@"%d",[statemachine AC:ans]]];
            break;
            
        case 1:
        [[self label] setText:[NSString stringWithFormat:@"%d",[statemachine C:ans]]];
            break;
}
}


- (IBAction)kakeru:(id)sender {
    switch (keisan) {
        case 0:
            break;
        case 1:
        [[self label] setText:[NSString stringWithFormat:@"%g",[statemachine keisan:answer]]];
        y=0;
            break;
            }
    keisan=1;
    shou=0;
    n=1;
    answer=3;
}

- (IBAction)waru:(id)sender {
    switch (keisan) {
        case 0:
            break;
        case 1:
            [[self label] setText:[NSString stringWithFormat:@"%g",[statemachine keisan:answer]]];
        y=0;
            break;
    }
    keisan=1;
    shou=0;
    n=1;
    answer=4;
}

- (IBAction)hanten:(id)sender {
    switch (keisan) {
            case 0:
            [[self label] setText:[NSString stringWithFormat:@"%g",[statemachine hantenx:answer]]];
            break;
            case 1:
            [[self label] setText:[NSString stringWithFormat:@"%g",[statemachine hanteny:answer]]];
            break;
    }
}

@end
    

