//
//  NTLoadingImageView.h
//  iShare
//
//  Created by Nineteen on 3/13/17.
//  Copyright © 2017 aren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NTLoadingImageView : UIImageView

- (instancetype)initWithImageArray :(NSMutableArray *)imageArray;
- (void)showLoadingImageViewAddedTo :(UIView *)view animated :(BOOL)animated;
- (void)disappearLoadingImageWithAnimation :(BOOL)animated;

@end
