//
//  ViewController.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "ViewController.h"
#import "MVPViewController.h"
#import "MVVMViewController.h"
#import "CDDViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self showCDD];
    });
}


-(void) showMVP{
    MVPViewController *vc = [MVPViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}

-(void) showMVVM{
    MVVMViewController *vc = [MVVMViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}

-(void) showCDD{
    CDDViewController *vc = [CDDViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}
@end
