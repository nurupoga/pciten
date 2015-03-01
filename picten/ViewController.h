//
//  ViewController.h
//  picten
//
//  Created by nagatakidani sinzi on 2014/12/23.
//  Copyright (c) 2014年 nagatakidani sinzi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
 
    int anataPoint;
    int pcPoint;
    
    IBOutlet UIButton *goukei;
    IBOutlet UIButton *home;
     IBOutlet UILabel *menulabel;
    IBOutlet UILabel *pc;
    
    IBOutlet UILabel *anata;
    

    IBOutlet UIButton *wankaisi;
    
    
    IBOutlet UIImageView *haikei;

    IBOutlet UIImageView *imgview;
    IBOutlet UIButton *iti;
    IBOutlet UIButton *ni;
    IBOutlet UIButton *san;
    IBOutlet UIButton *yon;
    IBOutlet UIButton *ue;
    IBOutlet UIButton *kaisi;

    IBOutlet UIButton *stop;
    
    IBOutlet UILabel *label;
    int count;//全部足した数値を一時的に入れる変数
    
}

-(IBAction)kotaeiti;
-(IBAction)kotaeni;
-(IBAction)kotaesan;
-(IBAction)kotaeyon;
-(IBAction)kaisi;
-(IBAction)risetto;
-(IBAction)menu;


@end

