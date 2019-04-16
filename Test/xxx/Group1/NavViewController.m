//
//  NavViewController.m
//  xxx
//
//  Created by vhall on 2019/4/10.
//  Copyright © 2019 vhall. All rights reserved.
//

#import "NavViewController.h"

@interface NavViewController ()

@end

@implementation NavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


///设置不支持重力感应，初始方向是竖屏
- (BOOL)shouldAutorotate {
    return NO;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait;
}


@end
