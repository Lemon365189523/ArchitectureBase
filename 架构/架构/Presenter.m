//
//  Presenter.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "Presenter.h"


@interface Presenter ()



@end

@implementation Presenter


-(void)printTask{
    
    NSString *printContent = _model.content;
    
    [_view printOnView:printContent];
}

-(void)onPrintBtnClick{
    int  rand = arc4random()%10;
    _model.content = [NSString stringWithFormat:@"行 %d",rand + 1];
    
    [_view printOnView:_model.content];
}

@end
