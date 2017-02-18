//
//  Presenter.h
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPView.h"
#import "MVPModel.h"

@interface Presenter : NSObject <MVPViewDeleagate>
@property (nonatomic, strong) MVPView *view;

@property (nonatomic, strong) MVPModel *model;

-(void) printTask;

@end
