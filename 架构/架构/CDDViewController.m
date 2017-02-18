//
//  CDDViewController.m
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "CDDViewController.h"
#import "MyView.h"
#import "MyPresenter.h"
#import "CDDContext.h"

@interface CDDViewController ()

@property (nonatomic, strong) MyView *myView;

@property (nonatomic, strong) MyPresenter *myPresenter;

@property (nonatomic, strong) CDDContext *context;

@end

@implementation CDDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.myPresenter = [MyPresenter new];
    
    self.myView = [MyView new];
    self.myView.frame = self.view.bounds;
    [self.view addSubview:self.myView];
    
    self.context = [CDDContext new];
    self.context.presenter = self.myPresenter;
    self.context.view = self.myView;
}



@end
