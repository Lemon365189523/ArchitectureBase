//
//  PrintDataAccessObject.h
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPModel.h"

//这层获取模型
@interface PrintDataAccessObject : NSObject

-(MVPModel *) getPrintModel;
@end
