//
//  ServiceFactory.h
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrintService.h"

@interface ServiceFactory : NSObject

+(instancetype) sharedInstance;

@property (nonatomic, strong) PrintService *printService;

@end
