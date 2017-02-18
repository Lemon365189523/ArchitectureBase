//
//  ServiceFactory.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "ServiceFactory.h"

@interface ServiceFactory ()

@end


@implementation ServiceFactory

+(instancetype)sharedInstance{
    static ServiceFactory *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [ServiceFactory new];
    });
    return instance;
}


-(instancetype)init{
    if (self = [super init]) {
        _printService = [PrintService new];
    }
    return self;
}

@end
