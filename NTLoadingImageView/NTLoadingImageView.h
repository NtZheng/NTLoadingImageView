//
//  NTLoadingImageView.h
//  iShare
//
//  Created by Nineteen on 3/13/17.
//  Copyright © 2017 aren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NTLoadingImageView : UIImageView

@property (nonatomic, assign) NSInteger duration; // 执行一个周期持续时间 default :0
@property (nonatomic, assign) NSInteger repeatCount; // 重复次数 default :1

/**
 *
 *  初始化方法
 *
 *  @param imageArray                动画来源（一套连续的图片）
 *
 */
- (instancetype)initWithImageArray :(NSMutableArray *)imageArray;

/**
 *
 *  show action
 *
 *  @param view                       父视图
 *  @param animated                   透明度动画
 */
- (void)showLoadingImageViewAddedTo :(UIView *)view animated :(BOOL)animated;


/**
 *
 *  初始化方法
 *
 *  @param animated                   透明度动画
 *
 */
- (void)disappearLoadingImageWithAnimation :(BOOL)animated;


@end
