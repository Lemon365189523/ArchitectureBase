//
//  MVVMViewModel.h
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMModel.h"

@interface MVVMViewModel : NSObject

@property (nonatomic, strong) NSString * contentStr;

-(void) onPrintClick;

-(void) setWithModel:(MVVMModel *) model;

@end
