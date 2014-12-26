//
//  ViewController.m
//  picten
//
//  Created by nagatakidani sinzi on 2014/12/23.
//  Copyright (c) 2014年 nagatakidani sinzi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int total;
}

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
    
    //    goukei = iti
    //    goukei= @"iti"+ @"5";
    
    
    //
    NSString *itiStr = iti.currentTitle;
    NSString *niStr = ni.currentTitle;
    NSString *sanStr = san.currentTitle;
    NSString *yonStr = yon.currentTitle;
    //TODO: NSString itiStr からint に変換して、同様に
    
    NSLog(@"成功:%d",itiStr.intValue);
    NSLog(@"成功:%d",niStr.intValue);
    NSLog(@"成功:%d",sanStr.intValue);
    NSLog(@"成功:%d",yonStr.intValue);
    
    
    //    NSString
    
}

-(IBAction)kotaeiti{
    count=count;
    
    NSString *itiStr = iti.currentTitle;
    NSLog(@"成功:%d",itiStr.intValue);
    int count = itiStr.intValue;
    total=total+count;
    label.text = [NSString stringWithFormat:@"%d",total];
    
    
    if (total==10) {
        imgview.image = [UIImage imageNamed:@"frame00033.png"];
        [self.view addSubview:imgview];
    }
    else if(total > 10){
        
        imgview.image = [UIImage imageNamed:@"02FF0975293.png"];
        [self.view addSubview:imgview];
        
    }
    
    
    
}


-(IBAction)kotaeni{
    count=count;
    
    NSString *niStr = ni.currentTitle;
    NSLog(@"成功:%d",niStr.intValue);
    int count = niStr.intValue;
    total=total+count;
    label.text = [NSString stringWithFormat:@"%d",total];
    
    
    if (total==10) {
        imgview.image = [UIImage imageNamed:@"frame00033.png"];
        [self.view addSubview:imgview];
    }
    else if(total > 10){
        
        imgview.image = [UIImage imageNamed:@"02FF0975293.png"];
        [self.view addSubview:imgview];
        
    }
    
}


-(IBAction)kotaesan{
    NSString *sanStr = san.currentTitle;
    NSLog(@"成功:%d",sanStr.intValue);
    count = sanStr.intValue;
    total=total+count;
    label.text = [NSString stringWithFormat:@"%d",total];
    
    if (total==10) {
        imgview.image = [UIImage imageNamed:@"frame00033.png"];
        [self.view addSubview:imgview];
    }
    else if(total > 10){
        
        imgview.image = [UIImage imageNamed:@"02FF0975293.png"];
        [self.view addSubview:imgview];
        
    }
    
}


-(IBAction)kotaeyon{
    NSString *yonStr = yon.currentTitle;
    NSLog(@"成功:%d",yonStr.intValue);
    count = yonStr.intValue;
    total=total+count;
    label.text = [NSString stringWithFormat:@"%d",total];
    
    if (total==10) {
        imgview.image = [UIImage imageNamed:@"frame00033.png"];
        [self.view addSubview:imgview];
    }
    else if(total > 10){
        
        imgview.image = [UIImage imageNamed:@"02FF0975293.png"];
        [self.view addSubview:imgview];

    }
    
    
    
}


@end
