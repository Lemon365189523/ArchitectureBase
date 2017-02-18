//
//  PrintService.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "PrintService.h"
#import "DataAccessFactory.h"
//网络请求层
@implementation PrintService

-(MVPModel *)getPrintModel{
    MVPModel *model = [[DataAccessFactory sharedInstance].printDAO getPrintModel];
    return model;
}

@end
