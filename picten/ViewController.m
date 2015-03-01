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
    int ternNumber;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    srand((unsigned)time(NULL));
    stop.hidden = YES;
    home.hidden = YES;
    kaisi.hidden = YES;
    menulabel.hidden = YES;
    ternNumber = 0;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark 数字が表示されるボタン↓

-(IBAction)kotaeiti{
    NSLog(@"call 1Button");
    NSString *itiStr = iti.currentTitle;
    NSLog(@"成功:%d",itiStr.intValue);
    int count = itiStr.intValue;
    total=total+count;
    label.text = [NSString stringWithFormat:@"%d",total];
    [self anatahantei];
    int newiti = arc4random() % 10 + 1;
    [iti setTitle:[NSString stringWithFormat:@"%d",newiti] forState:UIControlStateNormal];
    [iti setTitle:[NSString stringWithFormat:@"%d",newiti] forState:UIControlStateHighlighted];
    
    kaisi.hidden = YES;
    stop.hidden = YES;
    home.hidden = YES;
    menulabel.hidden = YES;
    ternNumber++;

    //白い背景をいれている
    if (ternNumber == 1) {
        [wankaisi setTitle:@"二人目" forState:UIControlStateNormal];
    }
    if (ternNumber == 2) {
        [wankaisi setTitle:@"一人目" forState:UIControlStateNormal];
        ternNumber = 0;
    }
        haikei.alpha=0.7;
    //〜人目を表示する
    wankaisi.hidden = NO;
    
    if (ternNumber>=10) {
        NSLog(@"call kakutoku");

        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"獲得"
                              message:@"一点獲得"
                              delegate:self
                              cancelButtonTitle:nil
                              otherButtonTitles:@"OK", nil];
        [alert show];
    }

    
    
    /* int hensin = arc4random() % 7 + 1;
     NSLog(@"敵:%d",hensin);
     label.text = [NSString stringWithFormat:@"%d", hensin + [label.text intValue]];*/
    
    [self pchantei];
}

-(IBAction)kotaeni{
    count=count;
    
    NSString *niStr = ni.currentTitle;
    NSLog(@"成功:%d",niStr.intValue);
    int count = niStr.intValue;
    total=total+count;
    label.text = [NSString stringWithFormat:@"%d",total];
    
    [self anatahantei];
    
    int newni = arc4random() % 10 + 1;
    [ni setTitle:[NSString stringWithFormat:@"%d",newni] forState:UIControlStateNormal];
    [ni setTitle:[NSString stringWithFormat:@"%d",newni] forState:UIControlStateHighlighted];
    
    
    kaisi.hidden = YES;
    stop.hidden = YES;
    home.hidden = YES;
    menulabel.hidden = YES;
    ternNumber++;
    
    //白い背景をいれている
    if (ternNumber == 1) {
        [wankaisi setTitle:@"二人目" forState:UIControlStateNormal];
    }
    if (ternNumber == 2) {
        [wankaisi setTitle:@"一人目" forState:UIControlStateNormal];
        ternNumber = 0;
    }
    haikei.alpha=0.7;
    //〜人目を表示する
    wankaisi.hidden = NO;
    
    
    /* int hensin = arc4random() % 7 + 1;
     NSLog(@"敵:%d",hensin);
     label.text = [NSString stringWithFormat:@"%d", hensin + [label.text intValue]];*/
    
    [self pchantei];
}

-(IBAction)kotaesan{
    NSString *sanStr = san.currentTitle;
    NSLog(@"成功:%d",sanStr.intValue);
    count = sanStr.intValue;
    total=total+count;
    label.text = [NSString stringWithFormat:@"%d",total];
    
    [self anatahantei];
    int newsan = arc4random() % 10 + 1;
    [san setTitle:[NSString stringWithFormat:@"%d",newsan] forState:UIControlStateNormal];
    [san setTitle:[NSString stringWithFormat:@"%d",newsan] forState:UIControlStateHighlighted];
    kaisi.hidden = YES;
    stop.hidden = YES;
    home.hidden = YES;
    menulabel.hidden = YES;
    ternNumber++;
    
    //白い背景をいれている
    if (ternNumber == 1) {
        [wankaisi setTitle:@"二人目" forState:UIControlStateNormal];
    }
    if (ternNumber == 2) {
        [wankaisi setTitle:@"一人目" forState:UIControlStateNormal];
        ternNumber = 0;
    }
    haikei.alpha=0.7;
    //〜人目を表示する
    wankaisi.hidden = NO;
    

    
    /*int hensin = arc4random() % 7 + 1;
     NSLog(@"敵:%d",hensin);
     label.text = [NSString stringWithFormat:@"%d", hensin + [label.text intValue]];*/
    
    [self pchantei];
}


-(IBAction)kotaeyon{
    NSString *yonStr = yon.currentTitle;
    NSLog(@"成功:%d",yonStr.intValue);
    count = yonStr.intValue;
    total=total+count;
    label.text = [NSString stringWithFormat:@"%d",total];
    [self anatahantei];
    
    //新しい数字を入れてあげる
    
    int newyon = arc4random() % 10 + 1;
    [yon setTitle:[NSString stringWithFormat:@"%d",newyon] forState:UIControlStateNormal];
    [yon setTitle:[NSString stringWithFormat:@"%d",newyon] forState:UIControlStateHighlighted];
    kaisi.hidden = YES;
    stop.hidden = YES;
    home.hidden = YES;
    menulabel.hidden = YES;
    ternNumber++;
    
    //白い背景をいれている
    if (ternNumber == 1) {
        [wankaisi setTitle:@"二人目" forState:UIControlStateNormal];
    }
    if (ternNumber == 2) {
        [wankaisi setTitle:@"一人目" forState:UIControlStateNormal];
        ternNumber = 0;
    }
    haikei.alpha=0.7;
    //〜人目を表示する
    wankaisi.hidden = NO;
    

    
    /*int hensin = arc4random() % 7 + 1;
     NSLog(@"敵:%d",hensin);
     label.text = [NSString stringWithFormat:@"%d", hensin + [label.text intValue]];*/
    
    [self pchantei];
}
#pragma mark　開始　メニュー
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
    //
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
    
    kaisi.hidden = YES;
    stop.hidden = YES;
    home.hidden = YES;
    menulabel.hidden = YES;
    
    wankaisi.hidden = YES;
    
    haikei.alpha=0.7;
    [UIView beginAnimations:@"FadeOut" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.3];
    haikei.alpha=0;
    [UIView commitAnimations];
    
    
    //    NSString
    
}




-(IBAction)menu{
    
    stop.hidden = NO;
    
    kaisi.hidden = NO;
    
    
    home.hidden = NO;
    menulabel.hidden = NO;
    
    
    haikei.alpha=0;
    [UIView beginAnimations:@"FadeOut" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.3];
    haikei.alpha=0.7;
    [UIView commitAnimations];
    
}




-(IBAction)back{
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(IBAction)exit{
    
    
    [self.presentingViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark 判定

-(void)anatahantei{
    if (total==10) {
        anata.text = [NSString stringWithFormat:@"%d",anataPoint];
        anataPoint = anataPoint +1;
        anata.text = [NSString stringWithFormat:@"%d",anataPoint];
    }
    
    else if(total > 10){
        aite.text = [NSString stringWithFormat:@"%d",aitePoint];
        aitePoint = aitePoint +1;
        aite.text = [NSString stringWithFormat:@"%d",aitePoint];

        
        
        
        // anata.text = [NSString stringWithFormat:@"%d",anataPoint];
        
        
    }
}

-(void)pchantei{
    if (total==10) {
        pc.text = [NSString stringWithFormat:@"%d",pcPoint];
    }
    else if(total > 10){
        // pc.text = [NSString stringWithFormat:@"%d",pcPoint];
        
        
        
        
    }
    
    
}




@end
