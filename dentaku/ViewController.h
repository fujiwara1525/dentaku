//
//  ViewController.h
//  dentaku
//
//  Created by 松尾　牧人 on 12/11/08.
//  Copyright (c) 2012年 Makito Matsuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
   // int x;
   // int answer;
   // int jou;
   // int y;
   // int keisan;
   // double Z;
    
    
}

@property enum {dentaku} state;

- (void)Button:(int)number;

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

@property (weak, nonatomic) IBOutlet UILabel *Label;

@property (weak, nonatomic) IBOutlet UIButton *AC;


@end
