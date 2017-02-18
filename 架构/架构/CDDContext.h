//
//  CDDContext.h
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class CDDContext;
@class CDDView;
@class CDDPresenter;

@interface  CDDPresenter : NSObject

@property (nonatomic, weak) UIViewController *baseController;

@property (nonatomic, weak) CDDView *view;

@property (nonatomic, weak) id adapter;//for tableView adapter

@end


@interface CDDInteractor : NSObject

@property (nonatomic, weak) UIViewController *baseController;

@end

@interface CDDView : UIView

@property (nonatomic, weak) CDDPresenter *presenter;

@property (nonatomic, weak) CDDInteractor *interactor;

@property (nonatomic, weak) CDDContext *context;

@end

@interface CDDContext : NSObject

@property (nonatomic, strong) CDDPresenter *presenter;

@property (nonatomic, strong) CDDInteractor *interactor;

@property (nonatomic, strong) CDDView *view;

- (instancetype)initWithPresenter:(CDDPresenter*)presenter withInteractor:(CDDInteractor*)interactor;

@end
