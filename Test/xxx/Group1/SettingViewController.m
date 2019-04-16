//
//  SettingViewController.m
//  xxx
//
//  Created by vhall on 2019/4/10.
//  Copyright © 2019 vhall. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)shouldAutorotate
{
    return YES;//支持重力感应
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAllButUpsideDown;//设置支持的转屏方向
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return self.interfaceOrientation;//设置初始的方向
}

@end
