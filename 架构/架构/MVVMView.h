//
//  MVVMView.h
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMViewModel.h"

@interface MVVMView : UIView

-(void) setWithViewModel:(MVVMViewModel *) viewModel;

@end
