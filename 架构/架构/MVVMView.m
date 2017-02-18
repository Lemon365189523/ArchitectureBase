//
//  MVVMView.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "MVVMView.h"
#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"
#import "MVVMViewModel.h"

@interface MVVMView  ()

@property (nonatomic, strong) UILabel *lbContent;

@property (nonatomic, strong) UIButton *button;

@property (nonatomic, strong) MVVMViewModel *viewModel;

@end

@implementation MVVMView

-(instancetype)init{
    if (self = [super init]) {
        self.backgroundColor = [UIColor lightGrayColor];
        _lbContent = [UILabel new];
        [self addSubview:_lbContent];
        _lbContent.frame = CGRectMake(100, 100, 100, 30);
        _lbContent.font = [UIFont systemFontOfSize:20];
        
        _button = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _button.frame = CGRectMake(100, 200, 100, 50);
        [self addSubview:_button];
        [_button setTitle:@"打印" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

//用KVO与viewModel中的content属性绑定
-(void)setWithViewModel:(MVVMViewModel *)viewModel{
    self.viewModel = viewModel;
    [self.KVOController observe:viewModel keyPath:@"contentStr" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        NSString *newContent = change[NSKeyValueChangeNewKey];
        
        _lbContent.text = newContent;
    }];
    
}

-(void) onPrintClick{
    
    [self.viewModel onPrintClick];
}

@end
