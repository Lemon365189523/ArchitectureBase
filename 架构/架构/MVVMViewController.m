
//
//  MVVMViewController.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMView.h"
#import "MVVMModel.h"
#import "MVVMViewModel.h"

@interface MVVMViewController ()

@property (nonatomic, strong) MVVMView *mvvmView;

@property (nonatomic, strong) MVVMViewModel *viewModel;

@property (nonatomic, strong) MVVMModel *model;

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mvvmView = [MVVMView new];
    self.mvvmView.frame = self.view.bounds;
    [self.view addSubview:self.mvvmView];
    
    self.viewModel = [MVVMViewModel new];
    
    self.model = [MVVMModel new];
    self.model.content = @"Line 0";
    
    [_viewModel setWithModel:self.model];
    [_mvvmView setWithViewModel:_viewModel];
}



@end
