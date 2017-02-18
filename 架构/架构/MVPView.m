//
//  MVPView.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "MVPView.h"

@interface MVPView ()

@property (nonatomic, strong) UILabel *contentLB;

@property (nonatomic, strong) UIButton *button;
@end

@implementation MVPView

-(instancetype)init{
    if (self = [super init]) {
        self.backgroundColor = [UIColor lightGrayColor];
        _contentLB = [[UILabel alloc] init];
        [self addSubview:_contentLB];
        _contentLB.frame = CGRectMake(0, 100, 300, 30);
        _contentLB.textAlignment = NSTextAlignmentCenter;
        _contentLB.textColor = [UIColor blackColor];
        
        _button = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _button.frame = CGRectMake(100, 200, 100, 50);
        [self addSubview:_button];
        [_button setTitle:@"打印" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

-(void) onPrintClick{
    if (self.delegate) {
        [self.delegate onPrintBtnClick];
    }
}


-(void)printOnView:(NSString *)content{
    self.contentLB.text = content;
}

@end
