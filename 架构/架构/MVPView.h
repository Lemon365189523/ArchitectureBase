//
//  MVPView.h
//  架构
//
//  Created by Macx on 2017/2/18.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MVPViewDeleagate <NSObject>

-(void) onPrintBtnClick;

@end


@interface MVPView : UIView


-(void) printOnView:(NSString *) content;

@property (nonatomic, weak) id<MVPViewDeleagate> delegate;
@end
