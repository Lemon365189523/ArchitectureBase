//
//  MyView.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "MyView.h"
#import "MyPresenter.h"
#import "CDDContext.h"

@interface MyView ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation MyView

-(instancetype)init{
    if (self = [super init]) {
        _button = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _button.frame = CGRectMake(100, 200, 100, 50);
        [self addSubview:_button];
        [_button setTitle:@"打印" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}


-(void)onPrintClick{
    MyPresenter *persenter =  (MyPresenter *)self.context.presenter;
    [persenter printPaper];
}

@end
