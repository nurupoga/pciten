//
//  ViewController.h
//  picten
//
//  Created by nagatakidani sinzi on 2014/12/23.
//  Copyright (c) 2014年 nagatakidani sinzi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
 
    IBOutlet UIButton *iti;
    IBOutlet UIButton *goukei;

    IBOutlet UIImageView *imgview;
    IBOutlet UIButton *ni;
    IBOutlet UIButton *san;
    IBOutlet UIButton *yon;
    IBOutlet UIButton *ue;
        IBOutlet UILabel *label;
    int count;//全部足した数値を一時的に入れる変数
    
}

-(IBAction)kotaeiti;
-(IBAction)kotaeni;
-(IBAction)kotaesan;
-(IBAction)kotaeyon;
-(IBAction)kaisi;

@end

