//
//  PrintDataAccessObject.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "PrintDataAccessObject.h"

@implementation PrintDataAccessObject

-(MVPModel *)getPrintModel{
    MVPModel *model = [MVPModel new];
    model.content = @"line 0";
    return model;
}

@end
