//
//  DataAccessFactory.h
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrintDataAccessObject.h"

@interface DataAccessFactory : NSObject

+(instancetype) sharedInstance;

@property (nonatomic, strong) PrintDataAccessObject *printDAO;

@end
