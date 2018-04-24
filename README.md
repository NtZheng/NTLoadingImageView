# NTLoadingImageView
这是一个加载动画的封装类，继承UIImageView

* 使用方法

```
// 图片源
NSMutableArray *imageArray = [NSMutableArray array];
for (int i = 0; i < 32; i++) {
    UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"加载动画_%d",i]];
    [imageArray addObject:image];
}

// 添加图片源
NTLoadingImageView *loadingImageView = [[NTLoadingImageView alloc]initWithImageArray:imageArray];

// frame
loadingImageView.frame = CGRectMake(100, 100, 64, 64);

// 设置动画相关属性
loadingImageView.duration = 1;// default: 1
loadingImageView.repeatCount = 0;// default: 0

// 开启动画
[loadingImageView showLoadingImageViewAddedTo:self.view animated:YES];

// 关闭动画
[loadingImageView disappearLoadingImageWithAnimation:YES];

```

* 示意图

![示意图](示意图.gif)


        
