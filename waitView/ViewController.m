//
//  ViewController.m
//  waitView
//
//  Created by zhuang chaoxiao on 14-9-30.
//  Copyright (c) 2014年 zhuang chaoxiao. All rights reserved.
//

#import "ViewController.h"
#import "RockWaitView.h"

@interface ViewController ()
- (IBAction)btnClicked:(id)sender;
- (IBAction)btn2Clicked:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClicked:(id)sender {
    
    
    waitView = [[RockWaitView alloc]initWithParentView:self.view withStr:@"等待中,请稍后"];
    
    
    [self performSelector:@selector(btn2Clicked:) withObject:self afterDelay:2];

}

- (IBAction)btn2Clicked:(id)sender {
    
    [waitView dismiss];
    
}
@end
