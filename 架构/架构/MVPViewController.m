//
//  MVPViewController.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "MVPViewController.h"
#import "MVPView.h"
#import "MVPViewController.h"
#import "Presenter.h"
#import "MVPModel.h"
#import "ServiceFactory.h"

@interface MVPViewController ()

@property (nonatomic, strong) Presenter *presenter;

@property (nonatomic, strong) MVPView *mvpView;

@property (nonatomic, strong) MVPModel *mvpModel;

@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.presenter = [Presenter new];
    self.mvpView = [MVPView new];
    self.mvpView.frame = self.view.bounds;
    [self.view addSubview:self.mvpView];
    self.mvpView.delegate = self.presenter;
    
    
//    self.mvpModel = [MVPModel new];
//    self.mvpModel.content = @"MVP Content";
    //从server layer获取model
    self.mvpModel = [[ServiceFactory sharedInstance].printService getPrintModel];
    
    _presenter.view = self.mvpView;
    _presenter.model = self.mvpModel;
    
    [_presenter printTask];
    
}



@end
