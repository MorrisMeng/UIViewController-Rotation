# UIViewController-Rotation

Screen rotation control


UIViewController-Rotation.h
```
@interface UIViewController (Rotation)

//是否支持重力感应 注意不要和系统的shouldAutorotate属性重名，以免覆盖系统提供的功能
@property (nonatomic) BOOL autoRotate;

//方向 注意尽量不要和系统的interfaceOrientation属性重名，以免覆盖系统提供的功能
@property (nonatomic) UIInterfaceOrientation orientation;

@end
```


NavigationController

```
- (BOOL)shouldAutorotate {
    return self.autoRotate;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return  UIInterfaceOrientationMaskAllButUpsideDown;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return self.orientation;
}
```

viewController of navi
```
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    self.navigationController.autoRotate = YES;//Support 
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.navigationController.autoRotate = NO;
}
```




UIViewController

```
PerInfoViewController *vc = [[PerInfoViewController alloc] init];
//设置默认竖屏
vc.orientation = UIInterfaceOrientationPortrait;
[self presentViewController:vc animated:YES completion:nil];
```

```
- (BOOL)shouldAutorotate {
    return self.autoRotate;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return self.orientation;
}
```


