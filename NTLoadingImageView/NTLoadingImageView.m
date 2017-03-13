//
//  NTLoadingImageView.m
//  iShare
//
//  Created by Nineteen on 3/13/17.
//  Copyright © 2017 aren. All rights reserved.
//

#import "NTLoadingImageView.h"

@interface NTLoadingImageView()

@property (nonatomic, strong) NSMutableArray *imageArray;

@end

@implementation NTLoadingImageView

- (instancetype)initWithImageArray :(NSMutableArray *)imageArray {
    if (self = [super init]) {
        self.imageArray = imageArray;
        
        // 设置动画属性
        self.animationImages = self.imageArray;
        self.animationDuration = 1;
        self.animationRepeatCount = 0;
        [self startAnimating];
    }
    return self;
}

#pragma mark - interface

- (void)showLoadingImageViewAddedTo :(UIView *)view animated :(BOOL)animated {
    if (animated == YES) {
        self.alpha = 0.0;
        [view addSubview:self];
        [UIView animateWithDuration:0.5f animations:^{
            self.alpha = 1.0f;
        }];
    } else {
        [view addSubview:self];
    }
}

- (void)disappearLoadingImageWithAnimation :(BOOL)animated {
    if (animated == YES) {
        [UIView animateWithDuration:0.5f animations:^{
            self.alpha = 0.0;
        } completion:^(BOOL finished) {
            [self removeFromSuperview];
        }];
    } else {
        [self removeFromSuperview];
    }
}


@end
