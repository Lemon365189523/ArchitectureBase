
//
//  DataAccessFactory.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "DataAccessFactory.h"

@implementation DataAccessFactory

+(instancetype)sharedInstance{
    static DataAccessFactory *dataFactory = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataFactory = [DataAccessFactory new];
    });
    return dataFactory;
}

-(instancetype)init{
    if (self = [super init]) {
        _printDAO = [PrintDataAccessObject new];
    }
    return self;
}

@end
