//
//  ViewController.m
//  NTLoadingImageView
//
//  Created by Nineteen on 3/13/17.
//  Copyright © 2017 Nineteen. All rights reserved.
//

#import "ViewController.h"
#import "NTLoadingImageView.h"

@interface ViewController ()

@property (nonatomic, strong) NTLoadingImageView *loadingImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.loadingImageView showLoadingImageViewAddedTo:self.view animated:YES];
    
}

#pragma mark - lazy load

- (NTLoadingImageView *)loadingImageView {
    if (_loadingImageView == nil) {
        
        // 图片源
        NSMutableArray *imageArray = [NSMutableArray array];
        for (int i = 0; i < 32; i++) {
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"加载动画_%d",i]];
            [imageArray addObject:image];
        }
        
        // 添加图片源
        _loadingImageView = [[NTLoadingImageView alloc]initWithImageArray:imageArray];
        
        // frame
        _loadingImageView.frame = CGRectMake(100, 100, 64, 64);
    }
    return _loadingImageView;
}


@end
