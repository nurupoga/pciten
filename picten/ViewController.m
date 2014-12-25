//
//  ViewController.m
//  picten
//
//  Created by nagatakidani sinzi on 2014/12/23.
//  Copyright (c) 2014年 nagatakidani sinzi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    srand((unsigned)time(NULL));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)kaisi;{
    
    int i, n,a,e,m,s,sum;
    
    n = random() % 7 + 1;
    NSLog(@"%2d", n);
    
    while (YES) {
        a = random() % 7 + 1;
        e = random() % 7 + 1;
        m = random() % 7 + 1;
        s = random() %7 + 1;
        
        
        for (int i1 = 0; i1 < 2; i1++ ){
            
            
            for (int i2=0;i2<2;i2++){
                
                for (int i3=0;i3<2;i3++){
                    
                    for (int i4=0;i4<2;i4++){
                        
                        
                        sum = n+a*i1+e*i2+m*i3+s*i4;
                        if ( sum == 10 ){
                            // goto分。ラベル（next）まで飛ぶ
                            goto next;
                            
                        }
                    }
                }
            }
        }
    }
    /// goto分のラベル。ここまでプログラムが飛ぶ
next:;
    
    
    
    //その型へんかんした変数をsetTitleに入れる
    NSString *str = [NSString stringWithFormat:@"%d", n];

    NSString *stra = [NSString stringWithFormat:@"%d", a];

    NSString *stre = [NSString stringWithFormat:@"%d", e];
    NSString *strm = [NSString stringWithFormat:@"%d", m];
    NSString *strs = [NSString stringWithFormat:@"%d", s];

    //    NSString *str = @"押してね";
    
    
            [iti setTitle:strs forState:UIControlStateNormal];
    
            
 
            [ni setTitle:stra forState:UIControlStateNormal];
   
    
            [san setTitle:strm forState:UIControlStateNormal];
    
            [yon setTitle:stre forState:UIControlStateNormal];
    
            [ue setTitle:str forState:UIControlStateNormal];
    
    }



@end
