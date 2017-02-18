//
//  MVVMViewModel.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "MVVMViewModel.h"
#import "MVVMView.h"

@interface MVVMViewModel ()

@property (nonatomic, strong) MVVMModel *model;

@end

@implementation MVVMViewModel

//双向绑定（核心）通常用KVO或者RAC
-(instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}

-(void)onPrintClick{
    int  rand = arc4random()%10;
    _model.content = [NSString stringWithFormat:@"行 %d",rand + 1];
    self.contentStr = [NSString stringWithFormat:@"行 %d",rand + 1];
}

-(void)setWithModel:(MVVMModel *)model{
    self.model = model;
    
    self.contentStr = model.content;
    
}
@end
